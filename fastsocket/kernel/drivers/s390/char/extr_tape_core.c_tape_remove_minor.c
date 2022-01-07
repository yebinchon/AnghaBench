
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int first_minor; int node; } ;


 int list_del_init (int *) ;
 int tape_device_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void
tape_remove_minor(struct tape_device *device)
{
 write_lock(&tape_device_lock);
 list_del_init(&device->node);
 device->first_minor = -1;
 write_unlock(&tape_device_lock);
}
