
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm_priv {scalar_t__ fan; } ;
struct nouveau_therm {int (* pwm_ctrl ) (struct nouveau_therm*,int ,int) ;} ;
struct TYPE_2__ {int line; } ;
struct nouveau_fantog_priv {TYPE_1__ func; } ;


 int nouveau_fantog_update (struct nouveau_fantog_priv*,int) ;
 int stub1 (struct nouveau_therm*,int ,int) ;

__attribute__((used)) static int
nouveau_fantog_set(struct nouveau_therm *therm, int percent)
{
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fantog_priv *priv = (void *)tpriv->fan;
 if (therm->pwm_ctrl)
  therm->pwm_ctrl(therm, priv->func.line, 0);
 nouveau_fantog_update(priv, percent);
 return 0;
}
