
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {int * nt; TYPE_1__* cdev; int * rt; } ;
struct TYPE_2__ {int dev; } ;


 int unregister_tape_dev (int *,int *) ;

void
tapechar_cleanup_device(struct tape_device *device)
{
 unregister_tape_dev(&device->cdev->dev, device->rt);
 device->rt = ((void*)0);
 unregister_tape_dev(&device->cdev->dev, device->nt);
 device->nt = ((void*)0);
}
