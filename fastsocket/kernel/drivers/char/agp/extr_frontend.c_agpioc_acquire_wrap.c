
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct agp_file_private {int access_flags; int my_pid; } ;
struct agp_controller {int dummy; } ;
struct TYPE_5__ {int agp_in_use; } ;
struct TYPE_4__ {int backend_acquired; int * current_controller; } ;


 int AGP_FF_ALLOW_CONTROLLER ;
 int AGP_FF_IS_CONTROLLER ;
 int AGP_FF_IS_VALID ;
 int DBG (char*) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int agp_backend_release (TYPE_2__*) ;
 TYPE_2__* agp_bridge ;
 int agp_controller_make_current (struct agp_controller*) ;
 struct agp_controller* agp_create_controller (int ) ;
 TYPE_1__ agp_fe ;
 struct agp_controller* agp_find_controller_by_pid (int ) ;
 int agp_insert_controller (struct agp_controller*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int agpioc_acquire_wrap(struct agp_file_private *priv)
{
 struct agp_controller *controller;

 DBG("");

 if (!(test_bit(AGP_FF_ALLOW_CONTROLLER, &priv->access_flags)))
  return -EPERM;

 if (agp_fe.current_controller != ((void*)0))
  return -EBUSY;

 if (!agp_bridge)
  return -ENODEV;

        if (atomic_read(&agp_bridge->agp_in_use))
                return -EBUSY;

 atomic_inc(&agp_bridge->agp_in_use);

 agp_fe.backend_acquired = 1;

 controller = agp_find_controller_by_pid(priv->my_pid);

 if (controller != ((void*)0)) {
  agp_controller_make_current(controller);
 } else {
  controller = agp_create_controller(priv->my_pid);

  if (controller == ((void*)0)) {
   agp_fe.backend_acquired = 0;
   agp_backend_release(agp_bridge);
   return -ENOMEM;
  }
  agp_insert_controller(controller);
  agp_controller_make_current(controller);
 }

 set_bit(AGP_FF_IS_CONTROLLER, &priv->access_flags);
 set_bit(AGP_FF_IS_VALID, &priv->access_flags);
 return 0;
}
