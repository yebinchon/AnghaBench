
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int allow_restart; int inquiry_len; int request_queue; struct sbp2_logical_unit* hostdata; } ;
struct sbp2_logical_unit {TYPE_1__* tgt; } ;
struct TYPE_2__ {int workarounds; } ;


 int ENOSYS ;
 int SBP2_WORKAROUND_INQUIRY_36 ;
 int blk_queue_update_dma_alignment (int ,int) ;

__attribute__((used)) static int sbp2_scsi_slave_alloc(struct scsi_device *sdev)
{
 struct sbp2_logical_unit *lu = sdev->hostdata;


 if (!lu)
  return -ENOSYS;

 sdev->allow_restart = 1;


 blk_queue_update_dma_alignment(sdev->request_queue, 4 - 1);

 if (lu->tgt->workarounds & SBP2_WORKAROUND_INQUIRY_36)
  sdev->inquiry_len = 36;

 return 0;
}
