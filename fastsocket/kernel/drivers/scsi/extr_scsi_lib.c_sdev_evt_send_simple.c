
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_event {int dummy; } ;
struct scsi_device {int dummy; } ;
typedef int gfp_t ;
typedef enum scsi_device_event { ____Placeholder_scsi_device_event } scsi_device_event ;


 int KERN_ERR ;
 struct scsi_event* sdev_evt_alloc (int,int ) ;
 int sdev_evt_send (struct scsi_device*,struct scsi_event*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;

void sdev_evt_send_simple(struct scsi_device *sdev,
     enum scsi_device_event evt_type, gfp_t gfpflags)
{
 struct scsi_event *evt = sdev_evt_alloc(evt_type, gfpflags);
 if (!evt) {
  sdev_printk(KERN_ERR, sdev, "event %d eaten due to OOM\n",
       evt_type);
  return;
 }

 sdev_evt_send(sdev, evt);
}
