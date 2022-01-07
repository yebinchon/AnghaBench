
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int use_10_for_rw; int use_10_for_ms; int tagged_supported; int request_queue; } ;


 int HZ ;
 int blk_queue_rq_timeout (int ,int) ;

__attribute__((used)) static int
stex_slave_config(struct scsi_device *sdev)
{
 sdev->use_10_for_rw = 1;
 sdev->use_10_for_ms = 1;
 blk_queue_rq_timeout(sdev->request_queue, 60 * HZ);
 sdev->tagged_supported = 1;

 return 0;
}
