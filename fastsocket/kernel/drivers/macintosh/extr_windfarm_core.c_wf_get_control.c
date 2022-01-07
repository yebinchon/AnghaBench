
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_control {int ref; TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; } ;


 int ENODEV ;
 int kref_get (int *) ;
 int try_module_get (int ) ;

int wf_get_control(struct wf_control *ct)
{
 if (!try_module_get(ct->ops->owner))
  return -ENODEV;
 kref_get(&ct->ref);
 return 0;
}
