
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scsi_cmnd {int sc_data_direction; int cmd_len; int cmnd; } ;
struct sbp2_lu {TYPE_3__* hi; int speed_code; int max_payload_size; } ;
struct sbp2_command_orb {int next_ORB_lo; int data_descriptor_hi; int data_descriptor_lo; int cdb; int misc; int next_ORB_hi; } ;
struct sbp2_command_info {int command_orb_dma; struct sbp2_command_orb command_orb; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {TYPE_2__* host; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ device; } ;


 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 scalar_t__ ORB_DIRECTION_NO_DATA_TRANSFER ;
 scalar_t__ ORB_DIRECTION_READ_FROM_MEDIA ;
 scalar_t__ ORB_DIRECTION_WRITE_TO_MEDIA ;
 int ORB_SET_DIRECTION (int) ;
 int ORB_SET_MAX_PAYLOAD (int ) ;
 int ORB_SET_NOTIFY (int) ;
 int ORB_SET_NULL_PTR (int) ;
 int ORB_SET_SPEED (int ) ;
 int SBP2_INFO (char*) ;
 int dma_sync_single_for_cpu (struct device*,int ,int,int) ;
 int dma_sync_single_for_device (struct device*,int ,int,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int sbp2_prep_command_orb_sg (struct sbp2_command_orb*,TYPE_3__*,struct sbp2_command_info*,int ,int ,scalar_t__,int) ;
 int sbp2util_cpu_to_be32_buffer (struct sbp2_command_orb*,int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static int sbp2_create_command_orb(struct sbp2_lu *lu,
       struct sbp2_command_info *cmd,
       struct scsi_cmnd *SCpnt)
{
 struct device *dmadev = lu->hi->host->device.parent;
 struct sbp2_command_orb *orb = &cmd->command_orb;
 unsigned int scsi_request_bufflen = scsi_bufflen(SCpnt);
 enum dma_data_direction dma_dir = SCpnt->sc_data_direction;
 u32 orb_direction;
 int ret;

 dma_sync_single_for_cpu(dmadev, cmd->command_orb_dma,
    sizeof(struct sbp2_command_orb), DMA_TO_DEVICE);
 orb->next_ORB_hi = ORB_SET_NULL_PTR(1);
 orb->next_ORB_lo = 0x0;
 orb->misc = ORB_SET_MAX_PAYLOAD(lu->max_payload_size);
 orb->misc |= ORB_SET_SPEED(lu->speed_code);
 orb->misc |= ORB_SET_NOTIFY(1);

 if (dma_dir == DMA_NONE)
  orb_direction = ORB_DIRECTION_NO_DATA_TRANSFER;
 else if (dma_dir == DMA_TO_DEVICE && scsi_request_bufflen)
  orb_direction = ORB_DIRECTION_WRITE_TO_MEDIA;
 else if (dma_dir == DMA_FROM_DEVICE && scsi_request_bufflen)
  orb_direction = ORB_DIRECTION_READ_FROM_MEDIA;
 else {
  SBP2_INFO("Falling back to DMA_NONE");
  orb_direction = ORB_DIRECTION_NO_DATA_TRANSFER;
 }


 if (orb_direction == ORB_DIRECTION_NO_DATA_TRANSFER) {
  orb->data_descriptor_hi = 0x0;
  orb->data_descriptor_lo = 0x0;
  orb->misc |= ORB_SET_DIRECTION(1);
  ret = 0;
 } else {
  ret = sbp2_prep_command_orb_sg(orb, lu->hi, cmd,
            scsi_sg_count(SCpnt),
            scsi_sglist(SCpnt),
            orb_direction, dma_dir);
 }
 sbp2util_cpu_to_be32_buffer(orb, sizeof(*orb));

 memset(orb->cdb, 0, sizeof(orb->cdb));
 memcpy(orb->cdb, SCpnt->cmnd, SCpnt->cmd_len);

 dma_sync_single_for_device(dmadev, cmd->command_orb_dma,
   sizeof(struct sbp2_command_orb), DMA_TO_DEVICE);
 return ret;
}
