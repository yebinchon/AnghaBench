
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_discipline {int (* setup_device ) (struct tape_device*) ;int owner; int (* cleanup_device ) (struct tape_device*) ;} ;
struct TYPE_2__ {int function; } ;
struct tape_device {scalar_t__ tape_state; scalar_t__ cdev_id; struct tape_discipline* discipline; TYPE_1__ lb_timeout; } ;


 int DBF_LH (int,char*,scalar_t__,...) ;
 int EINVAL ;
 scalar_t__ TS_INIT ;
 int TS_UNUSED ;
 int init_timer (TYPE_1__*) ;
 int module_put (int ) ;
 int stub1 (struct tape_device*) ;
 int stub2 (struct tape_device*) ;
 int tape_assign_minor (struct tape_device*) ;
 int tape_long_busy_timeout ;
 int tape_remove_minor (struct tape_device*) ;
 int tape_state_set (struct tape_device*,int ) ;
 int tapeblock_setup_device (struct tape_device*) ;
 int tapechar_cleanup_device (struct tape_device*) ;
 int tapechar_setup_device (struct tape_device*) ;
 int try_module_get (int ) ;

int
tape_generic_online(struct tape_device *device,
     struct tape_discipline *discipline)
{
 int rc;

 DBF_LH(6, "tape_enable_device(%p, %p)\n", device, discipline);

 if (device->tape_state != TS_INIT) {
  DBF_LH(3, "Tapestate not INIT (%d)\n", device->tape_state);
  return -EINVAL;
 }

 init_timer(&device->lb_timeout);
 device->lb_timeout.function = tape_long_busy_timeout;


 device->discipline = discipline;
 if (!try_module_get(discipline->owner)) {
  return -EINVAL;
 }

 rc = discipline->setup_device(device);
 if (rc)
  goto out;
 rc = tape_assign_minor(device);
 if (rc)
  goto out_discipline;

 rc = tapechar_setup_device(device);
 if (rc)
  goto out_minor;
 rc = tapeblock_setup_device(device);
 if (rc)
  goto out_char;

 tape_state_set(device, TS_UNUSED);

 DBF_LH(3, "(%08x): Drive set online\n", device->cdev_id);

 return 0;

out_char:
 tapechar_cleanup_device(device);
out_minor:
 tape_remove_minor(device);
out_discipline:
 device->discipline->cleanup_device(device);
 device->discipline = ((void*)0);
out:
 module_put(discipline->owner);
 return rc;
}
