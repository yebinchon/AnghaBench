
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_therm_priv {TYPE_1__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_4__ {int min_duty; int max_duty; } ;
struct TYPE_3__ {TYPE_2__ bios; } ;



__attribute__((used)) static void
nouveau_therm_fan_safety_checks(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;

 if (priv->fan->bios.min_duty > 100)
  priv->fan->bios.min_duty = 100;
 if (priv->fan->bios.max_duty > 100)
  priv->fan->bios.max_duty = 100;

 if (priv->fan->bios.min_duty > priv->fan->bios.max_duty)
  priv->fan->bios.min_duty = priv->fan->bios.max_duty;
}
