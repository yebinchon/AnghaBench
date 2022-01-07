
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;
struct smu_fan_control {int value; } ;
typedef int s32 ;


 struct smu_fan_control* to_smu_fan (struct wf_control*) ;

__attribute__((used)) static int smu_fan_get(struct wf_control *ct, s32 *value)
{
 struct smu_fan_control *fct = to_smu_fan(ct);
 *value = fct->value;
 return 0;
}
