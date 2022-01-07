
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidraw {size_t minor; int wait; scalar_t__ open; scalar_t__ exist; } ;
struct hid_device {TYPE_1__* ll_driver; struct hidraw* hidraw; } ;
struct TYPE_2__ {int (* close ) (struct hid_device*) ;} ;


 int MKDEV (int ,size_t) ;
 int device_destroy (int ,int ) ;
 int hidraw_class ;
 int hidraw_major ;
 int ** hidraw_table ;
 int kfree (struct hidraw*) ;
 int minors_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hid_device*) ;
 int wake_up_interruptible (int *) ;

void hidraw_disconnect(struct hid_device *hid)
{
 struct hidraw *hidraw = hid->hidraw;

 mutex_lock(&minors_lock);
 hidraw->exist = 0;

 device_destroy(hidraw_class, MKDEV(hidraw_major, hidraw->minor));

 hidraw_table[hidraw->minor] = ((void*)0);

 if (hidraw->open) {
  hid->ll_driver->close(hid);
  wake_up_interruptible(&hidraw->wait);
 } else {
  kfree(hidraw);
 }
 mutex_unlock(&minors_lock);
}
