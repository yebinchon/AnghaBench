
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int HZ ;
 int blk_queue_rq_timeout (int ,int) ;

__attribute__((used)) static int twa_slave_configure(struct scsi_device *sdev)
{

 blk_queue_rq_timeout(sdev->request_queue, 60 * HZ);

 return 0;
}
