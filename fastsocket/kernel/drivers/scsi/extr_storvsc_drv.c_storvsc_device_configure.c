
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;


 int BLK_BOUNCE_ANY ;
 int HZ ;
 int MSG_SIMPLE_TAG ;
 int PAGE_SIZE ;
 int STORVSC_MAX_IO_REQUESTS ;
 int blk_queue_bounce_limit (int ,int ) ;
 int blk_queue_max_segment_size (int ,int ) ;
 int blk_queue_rq_timeout (int ,int) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int ) ;
 int storvsc_timeout ;

__attribute__((used)) static int storvsc_device_configure(struct scsi_device *sdevice)
{
 scsi_adjust_queue_depth(sdevice, MSG_SIMPLE_TAG,
    STORVSC_MAX_IO_REQUESTS);

 blk_queue_max_segment_size(sdevice->request_queue, PAGE_SIZE);

 blk_queue_bounce_limit(sdevice->request_queue, BLK_BOUNCE_ANY);

 blk_queue_rq_timeout(sdevice->request_queue, (storvsc_timeout * HZ));

 return 0;
}
