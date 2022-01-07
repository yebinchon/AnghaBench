
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {int mode; } ;
struct nouveau_therm {scalar_t__ (* temp_get ) (struct nouveau_therm*) ;} ;
struct nouveau_device {scalar_t__ card_type; } ;


 int ARRAY_SIZE (char const**) ;
 int EINVAL ;
 int NOUVEAU_THERM_CTRL_NONE ;
 scalar_t__ NV_C0 ;
 int nouveau_therm_update (struct nouveau_therm*,int) ;
 struct nouveau_device* nv_device (struct nouveau_therm*) ;
 int nv_info (struct nouveau_therm*,char*,char const*) ;
 scalar_t__ stub1 (struct nouveau_therm*) ;

int
nouveau_therm_fan_mode(struct nouveau_therm *therm, int mode)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_device *device = nv_device(therm);
 static const char *name[] = {
  "disabled",
  "manual",
  "automatic"
 };


 if ((mode >= ARRAY_SIZE(name)) ||
     (mode != NOUVEAU_THERM_CTRL_NONE && device->card_type >= NV_C0))
  return -EINVAL;



 if (priv->mode == 2 && therm->temp_get(therm) < 0)
  return -EINVAL;

 if (priv->mode == mode)
  return 0;

 nv_info(therm, "fan management: %s\n", name[mode]);
 nouveau_therm_update(therm, mode);
 return 0;
}
