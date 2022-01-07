
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int blk_queue_max_segment_size (int ,int) ;

__attribute__((used)) static int beiscsi_slave_configure(struct scsi_device *sdev)
{
 blk_queue_max_segment_size(sdev->request_queue, 65536);
 return 0;
}
