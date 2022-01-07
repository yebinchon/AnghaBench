
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {TYPE_1__* discipline; } ;
struct TYPE_2__ {int owner; int (* cleanup_device ) (struct tape_device*) ;} ;


 int MS_UNKNOWN ;
 int module_put (int ) ;
 int stub1 (struct tape_device*) ;
 int tape_med_state_set (struct tape_device*,int ) ;
 int tape_remove_minor (struct tape_device*) ;
 int tapeblock_cleanup_device (struct tape_device*) ;
 int tapechar_cleanup_device (struct tape_device*) ;

__attribute__((used)) static void
tape_cleanup_device(struct tape_device *device)
{
 tapeblock_cleanup_device(device);
 tapechar_cleanup_device(device);
 device->discipline->cleanup_device(device);
 module_put(device->discipline->owner);
 tape_remove_minor(device);
 tape_med_state_set(device, MS_UNKNOWN);
}
