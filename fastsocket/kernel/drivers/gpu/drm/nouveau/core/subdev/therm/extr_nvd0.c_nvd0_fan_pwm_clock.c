
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm {int dummy; } ;
struct TYPE_2__ {int crystal; } ;


 TYPE_1__* nv_device (struct nouveau_therm*) ;

__attribute__((used)) static int
nvd0_fan_pwm_clock(struct nouveau_therm *therm)
{
 return (nv_device(therm)->crystal * 1000) / 20;
}
