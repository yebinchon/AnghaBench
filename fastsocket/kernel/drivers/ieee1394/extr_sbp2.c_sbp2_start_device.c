
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sbp2_reconnect_orb {int dummy; } ;
struct sbp2_query_logins_response {int dummy; } ;
struct sbp2_query_logins_orb {int dummy; } ;
struct sbp2_lu {int workarounds; TYPE_3__* ud; int shost; void* login_orb; int login_orb_dma; void* logout_orb; int logout_orb_dma; void* reconnect_orb; int reconnect_orb_dma; void* query_logins_response; int query_logins_response_dma; void* query_logins_orb; int query_logins_orb_dma; void* login_response; int login_response_dma; struct sbp2_fwhost_info* hi; } ;
struct sbp2_logout_orb {int dummy; } ;
struct sbp2_login_response {int dummy; } ;
struct sbp2_login_orb {int dummy; } ;
struct sbp2_fwhost_info {TYPE_2__* host; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ device; } ;


 int EBUSY ;
 int EINTR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SBP2_ERR (char*) ;
 int SBP2_INQUIRY_DELAY ;
 int SBP2_WORKAROUND_DELAY_INQUIRY ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 scalar_t__ msleep_interruptible (int) ;
 int sbp2_agent_reset (struct sbp2_lu*,int) ;
 scalar_t__ sbp2_login_device (struct sbp2_lu*) ;
 int sbp2_logout_device (struct sbp2_lu*) ;
 int sbp2_max_speed_and_size (struct sbp2_lu*) ;
 int sbp2_remove_device (struct sbp2_lu*) ;
 int sbp2_set_busy_timeout (struct sbp2_lu*) ;
 scalar_t__ sbp2util_create_command_orb_pool (struct sbp2_lu*) ;
 int scsi_add_device (int ,int ,int ,int ) ;
 int ssleep (int ) ;

__attribute__((used)) static int sbp2_start_device(struct sbp2_lu *lu)
{
 struct sbp2_fwhost_info *hi = lu->hi;
 int error;

 lu->login_response = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_login_response),
         &lu->login_response_dma, GFP_KERNEL);
 if (!lu->login_response)
  goto alloc_fail;

 lu->query_logins_orb = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_query_logins_orb),
         &lu->query_logins_orb_dma, GFP_KERNEL);
 if (!lu->query_logins_orb)
  goto alloc_fail;

 lu->query_logins_response = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_query_logins_response),
         &lu->query_logins_response_dma, GFP_KERNEL);
 if (!lu->query_logins_response)
  goto alloc_fail;

 lu->reconnect_orb = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_reconnect_orb),
         &lu->reconnect_orb_dma, GFP_KERNEL);
 if (!lu->reconnect_orb)
  goto alloc_fail;

 lu->logout_orb = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_logout_orb),
         &lu->logout_orb_dma, GFP_KERNEL);
 if (!lu->logout_orb)
  goto alloc_fail;

 lu->login_orb = dma_alloc_coherent(hi->host->device.parent,
         sizeof(struct sbp2_login_orb),
         &lu->login_orb_dma, GFP_KERNEL);
 if (!lu->login_orb)
  goto alloc_fail;

 if (sbp2util_create_command_orb_pool(lu))
  goto alloc_fail;



 if (msleep_interruptible(1000)) {
  sbp2_remove_device(lu);
  return -EINTR;
 }

 if (sbp2_login_device(lu)) {
  sbp2_remove_device(lu);
  return -EBUSY;
 }

 sbp2_set_busy_timeout(lu);
 sbp2_agent_reset(lu, 1);
 sbp2_max_speed_and_size(lu);

 if (lu->workarounds & SBP2_WORKAROUND_DELAY_INQUIRY)
  ssleep(SBP2_INQUIRY_DELAY);

 error = scsi_add_device(lu->shost, 0, lu->ud->id, 0);
 if (error) {
  SBP2_ERR("scsi_add_device failed");
  sbp2_logout_device(lu);
  sbp2_remove_device(lu);
  return error;
 }

 return 0;

alloc_fail:
 SBP2_ERR("Could not allocate memory for lu");
 sbp2_remove_device(lu);
 return -ENOMEM;
}
