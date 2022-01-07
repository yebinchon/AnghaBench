
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int BLK_BOUNCE_ANY ;
 int blk_queue_bounce_limit (int ,int ) ;
 int blk_queue_dma_alignment (int ,int ) ;

__attribute__((used)) static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
{
 blk_queue_bounce_limit(sdev->request_queue, BLK_BOUNCE_ANY);
 blk_queue_dma_alignment(sdev->request_queue, 0);
 return 0;
}
