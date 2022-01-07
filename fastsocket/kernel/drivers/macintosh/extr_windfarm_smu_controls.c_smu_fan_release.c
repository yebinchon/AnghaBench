
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;
struct smu_fan_control {int dummy; } ;


 int kfree (struct smu_fan_control*) ;
 struct smu_fan_control* to_smu_fan (struct wf_control*) ;

__attribute__((used)) static void smu_fan_release(struct wf_control *ct)
{
 struct smu_fan_control *fct = to_smu_fan(ct);

 kfree(fct);
}
