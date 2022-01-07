
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sas_rphy {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct sas_phy {void* phy_reset_problem_count; void* loss_of_dword_sync_count; void* running_disparity_error_count; void* invalid_dword_count; int number; TYPE_1__ dev; } ;
struct domain_device {int dummy; } ;


 int ENOMEM ;
 int RPEL_REQ_SIZE ;
 int RPEL_RESP_SIZE ;
 int SMP_REPORT_PHY_ERR_LOG ;
 int * alloc_smp_req (int ) ;
 int * alloc_smp_resp (int ) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 int kfree (int *) ;
 struct domain_device* sas_find_dev_by_rphy (struct sas_rphy*) ;
 void* scsi_to_u32 (int *) ;
 int smp_execute_task (struct domain_device*,int *,int ,int *,int ) ;

int sas_smp_get_phy_events(struct sas_phy *phy)
{
 int res;
 u8 *req;
 u8 *resp;
 struct sas_rphy *rphy = dev_to_rphy(phy->dev.parent);
 struct domain_device *dev = sas_find_dev_by_rphy(rphy);

 req = alloc_smp_req(RPEL_REQ_SIZE);
 if (!req)
  return -ENOMEM;

 resp = alloc_smp_resp(RPEL_RESP_SIZE);
 if (!resp) {
  kfree(req);
  return -ENOMEM;
 }

 req[1] = SMP_REPORT_PHY_ERR_LOG;
 req[9] = phy->number;

 res = smp_execute_task(dev, req, RPEL_REQ_SIZE,
               resp, RPEL_RESP_SIZE);

 if (!res)
  goto out;

 phy->invalid_dword_count = scsi_to_u32(&resp[12]);
 phy->running_disparity_error_count = scsi_to_u32(&resp[16]);
 phy->loss_of_dword_sync_count = scsi_to_u32(&resp[20]);
 phy->phy_reset_problem_count = scsi_to_u32(&resp[24]);

 out:
 kfree(resp);
 return res;

}
