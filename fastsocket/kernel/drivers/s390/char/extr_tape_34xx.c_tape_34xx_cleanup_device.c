
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int * discdata; } ;


 int kfree (int *) ;
 int tape_34xx_delete_sbid_from (struct tape_device*,int ) ;
 int tape_std_unassign (struct tape_device*) ;

__attribute__((used)) static void
tape_34xx_cleanup_device(struct tape_device *device)
{
 tape_std_unassign(device);

 if (device->discdata) {
  tape_34xx_delete_sbid_from(device, 0);
  kfree(device->discdata);
  device->discdata = ((void*)0);
 }
}
