
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct hdpvr_device {int wait_data; } ;
struct hdpvr_buffer {int status; struct hdpvr_device* dev; } ;


 int BUFSTAT_READY ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hdpvr_read_bulk_callback(struct urb *urb)
{
 struct hdpvr_buffer *buf = (struct hdpvr_buffer *)urb->context;
 struct hdpvr_device *dev = buf->dev;


 buf->status = BUFSTAT_READY;
 wake_up_interruptible(&dev->wait_data);
}
