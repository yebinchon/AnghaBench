
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {struct tape_device* modeset_byte; int ref_count; } ;


 int DBF_EVENT (int,char*,...) ;
 int atomic_dec_return (int *) ;
 int kfree (struct tape_device*) ;

struct tape_device *
tape_put_device(struct tape_device *device)
{
 int remain;

 remain = atomic_dec_return(&device->ref_count);
 if (remain > 0) {
  DBF_EVENT(4, "tape_put_device(%p) -> %i\n", device, remain);
 } else {
  if (remain < 0) {
   DBF_EVENT(4, "put device without reference\n");
  } else {
   DBF_EVENT(4, "tape_free_device(%p)\n", device);
   kfree(device->modeset_byte);
   kfree(device);
  }
 }

 return ((void*)0);
}
