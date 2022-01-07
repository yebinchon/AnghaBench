
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* program_alarms ) (struct nouveau_therm*) ;} ;
struct nouveau_therm_priv {scalar_t__ suspend; TYPE_1__ sensor; int mode; } ;
struct nouveau_therm {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_subdev_init (int *) ;
 int nouveau_therm_fan_mode (struct nouveau_therm*,int ) ;
 int stub1 (struct nouveau_therm*) ;

int
_nouveau_therm_init(struct nouveau_object *object)
{
 struct nouveau_therm *therm = (void *)object;
 struct nouveau_therm_priv *priv = (void *)therm;
 int ret;

 ret = nouveau_subdev_init(&therm->base);
 if (ret)
  return ret;

 if (priv->suspend >= 0)
  nouveau_therm_fan_mode(therm, priv->mode);
 priv->sensor.program_alarms(therm);
 return 0;
}
