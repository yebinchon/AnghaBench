
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct vio_port {int riobn; int liobn; } ;
struct srp_target {int dev; struct Scsi_Host* shost; } ;
struct mad_adapter_info_data {int mad_version; int os_type; int* port_max_txu; int partition_number; int partition_name; int srp_version; } ;
struct iu_entry {struct srp_target* target; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int max_sectors; } ;


 int GFP_KERNEL ;
 int H_SUCCESS ;
 struct mad_adapter_info_data* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,struct mad_adapter_info_data*,int ) ;
 int dprintk (char*,int ,int ) ;
 int eprintk (char*,...) ;
 int h_copy_rdma (int,int ,int ,int ,int ) ;
 int memset (struct mad_adapter_info_data*,int ,int) ;
 int partition_name ;
 int partition_number ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;
 struct vio_port* target_to_port (struct srp_target*) ;

int send_adapter_info(struct iu_entry *iue,
        dma_addr_t remote_buffer, uint16_t length)
{
 struct srp_target *target = iue->target;
 struct vio_port *vport = target_to_port(target);
 struct Scsi_Host *shost = target->shost;
 dma_addr_t data_token;
 struct mad_adapter_info_data *info;
 int err;

 info = dma_alloc_coherent(target->dev, sizeof(*info), &data_token,
      GFP_KERNEL);
 if (!info) {
  eprintk("bad dma_alloc_coherent %p\n", target);
  return 1;
 }


 err = h_copy_rdma(sizeof(*info), vport->riobn, remote_buffer,
     vport->liobn, data_token);
 if (err == H_SUCCESS) {
  dprintk("Client connect: %s (%d)\n",
   info->partition_name, info->partition_number);
 }

 memset(info, 0, sizeof(*info));

 strcpy(info->srp_version, "16.a");
 strncpy(info->partition_name, partition_name,
  sizeof(info->partition_name));
 info->partition_number = partition_number;
 info->mad_version = 1;
 info->os_type = 2;
 info->port_max_txu[0] = shost->hostt->max_sectors << 9;


 err = h_copy_rdma(sizeof(*info), vport->liobn, data_token,
     vport->riobn, remote_buffer);

 dma_free_coherent(target->dev, sizeof(*info), info, data_token);

 if (err != H_SUCCESS) {
  eprintk("Error sending adapter info %d\n", err);
  return 1;
 }

 return 0;
}
