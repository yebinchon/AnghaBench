
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_control {int ref; TYPE_1__* ops; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;


 int kref_put (int *,int ) ;
 int module_put (struct module*) ;
 int wf_control_release ;

void wf_put_control(struct wf_control *ct)
{
 struct module *mod = ct->ops->owner;
 kref_put(&ct->ref, wf_control_release);
 module_put(mod);
}
