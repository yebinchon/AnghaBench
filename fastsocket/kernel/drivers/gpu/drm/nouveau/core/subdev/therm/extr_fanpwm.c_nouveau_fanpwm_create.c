
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_therm_priv {TYPE_1__* fan; } ;
struct nouveau_therm {int (* pwm_get ) (struct nouveau_therm*,int ,int *,int *) ;int pwm_ctrl; } ;
struct dcb_gpio_func {int line; int param; } ;
struct TYPE_2__ {char* type; int set; int get; } ;
struct nouveau_fanpwm_priv {struct dcb_gpio_func func; TYPE_1__ base; } ;
struct nouveau_device {int cfgopt; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_fanpwm_priv* kzalloc (int,int ) ;
 int nouveau_boolopt (int ,char*,int ) ;
 int nouveau_fanpwm_get ;
 int nouveau_fanpwm_set ;
 struct nouveau_device* nv_device (struct nouveau_therm*) ;
 int stub1 (struct nouveau_therm*,int ,int *,int *) ;

int
nouveau_fanpwm_create(struct nouveau_therm *therm, struct dcb_gpio_func *func)
{
 struct nouveau_device *device = nv_device(therm);
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fanpwm_priv *priv;
 u32 divs, duty;

 if (!nouveau_boolopt(device->cfgopt, "NvFanPWM", func->param) ||
     !therm->pwm_ctrl ||
      therm->pwm_get(therm, func->line, &divs, &duty) == -ENODEV)
  return -ENODEV;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 tpriv->fan = &priv->base;
 if (!priv)
  return -ENOMEM;

 priv->base.type = "PWM";
 priv->base.get = nouveau_fanpwm_get;
 priv->base.set = nouveau_fanpwm_set;
 priv->func = *func;
 return 0;
}
