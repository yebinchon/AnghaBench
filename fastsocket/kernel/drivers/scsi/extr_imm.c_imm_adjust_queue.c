
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int BLK_BOUNCE_HIGH ;
 int blk_queue_bounce_limit (int ,int ) ;

__attribute__((used)) static int imm_adjust_queue(struct scsi_device *device)
{
 blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
 return 0;
}
