
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int length; int type; } ;
struct viosrp_host_config {int buffer; TYPE_3__ common; } ;
struct TYPE_5__ {struct viosrp_host_config host_config; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;
struct srp_event_struct {int comp; TYPE_2__ iu; } ;
struct ibmvscsi_host_data {int dev; TYPE_4__* host; int pool; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int host_lock; } ;


 int DMA_BIDIRECTIONAL ;
 int FW_FEATURE_CMO ;
 int VIOSRP_HOST_CONFIG_TYPE ;
 int VIOSRP_MAD_FORMAT ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,unsigned char*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int firmware_has_feature (int ) ;
 int free_event_struct (int *,struct srp_event_struct*) ;
 struct srp_event_struct* get_event_struct (int *) ;
 int ibmvscsi_send_srp_event (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ;
 int info_timeout ;
 int init_completion (int *) ;
 int init_event_struct (struct srp_event_struct*,int ,int ,int) ;
 int memset (struct viosrp_host_config*,int,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sync_completion ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmvscsi_do_host_config(struct ibmvscsi_host_data *hostdata,
       unsigned char *buffer, int length)
{
 struct viosrp_host_config *host_config;
 struct srp_event_struct *evt_struct;
 unsigned long flags;
 dma_addr_t addr;
 int rc;

 evt_struct = get_event_struct(&hostdata->pool);
 if (!evt_struct) {
  dev_err(hostdata->dev, "couldn't allocate event for HOST_CONFIG!\n");
  return -1;
 }

 init_event_struct(evt_struct,
     sync_completion,
     VIOSRP_MAD_FORMAT,
     info_timeout);

 host_config = &evt_struct->iu.mad.host_config;


 memset(host_config, 0x00, sizeof(*host_config));
 host_config->common.type = VIOSRP_HOST_CONFIG_TYPE;
 host_config->common.length = length;
 host_config->buffer = addr = dma_map_single(hostdata->dev, buffer,
          length,
          DMA_BIDIRECTIONAL);

 if (dma_mapping_error(hostdata->dev, host_config->buffer)) {
  if (!firmware_has_feature(FW_FEATURE_CMO))
   dev_err(hostdata->dev,
           "dma_mapping error getting host config\n");
  free_event_struct(&hostdata->pool, evt_struct);
  return -1;
 }

 init_completion(&evt_struct->comp);
 spin_lock_irqsave(hostdata->host->host_lock, flags);
 rc = ibmvscsi_send_srp_event(evt_struct, hostdata, info_timeout * 2);
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);
 if (rc == 0)
  wait_for_completion(&evt_struct->comp);
 dma_unmap_single(hostdata->dev, addr, length, DMA_BIDIRECTIONAL);

 return rc;
}
