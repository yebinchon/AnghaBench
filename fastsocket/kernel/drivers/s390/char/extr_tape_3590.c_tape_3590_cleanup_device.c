
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int * discdata; } ;


 int flush_scheduled_work () ;
 int kfree (int *) ;
 int tape_std_unassign (struct tape_device*) ;

__attribute__((used)) static void
tape_3590_cleanup_device(struct tape_device *device)
{
 flush_scheduled_work();
 tape_std_unassign(device);

 kfree(device->discdata);
 device->discdata = ((void*)0);
}
