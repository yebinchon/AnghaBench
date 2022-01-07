
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_sensor {int ref; TYPE_1__* ops; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;


 int kref_put (int *,int ) ;
 int module_put (struct module*) ;
 int wf_sensor_release ;

void wf_put_sensor(struct wf_sensor *sr)
{
 struct module *mod = sr->ops->owner;
 kref_put(&sr->ref, wf_sensor_release);
 module_put(mod);
}
