
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_therm_priv {scalar_t__ fan; } ;
struct nouveau_therm {int (* pwm_get ) (struct nouveau_therm*,int ,int*,int*) ;} ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int ,int ,int ) ;} ;
struct TYPE_3__ {int* log; int line; int func; } ;
struct nouveau_fanpwm_priv {TYPE_1__ func; } ;
struct TYPE_4__ {int card_type; } ;


 int NV_40 ;
 int max (int,int) ;
 struct nouveau_gpio* nouveau_gpio (struct nouveau_therm*) ;
 TYPE_2__* nv_device (struct nouveau_therm*) ;
 int stub1 (struct nouveau_therm*,int ,int*,int*) ;
 int stub2 (struct nouveau_gpio*,int ,int ,int ) ;

__attribute__((used)) static int
nouveau_fanpwm_get(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fanpwm_priv *priv = (void *)tpriv->fan;
 struct nouveau_gpio *gpio = nouveau_gpio(therm);
 int card_type = nv_device(therm)->card_type;
 u32 divs, duty;
 int ret;

 ret = therm->pwm_get(therm, priv->func.line, &divs, &duty);
 if (ret == 0 && divs) {
  divs = max(divs, duty);
  if (card_type <= NV_40 || (priv->func.log[0] & 1))
   duty = divs - duty;
  return (duty * 100) / divs;
 }

 return gpio->get(gpio, 0, priv->func.func, priv->func.line) * 100;
}
