
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmx {int activated; int setting; TYPE_1__* onmask; int * dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mask; } ;


 int ARRAY_SIZE (struct pmx**) ;
 int EINVAL ;
 int EUSERS ;
 int WARN (int,char*) ;
 int dev_dbg (struct device*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmx_mutex ;
 struct pmx** pmx_registers ;
 struct pmx** pmx_settings ;
 int update_registers (struct pmx*,int) ;

int pmx_activate(struct device *dev, struct pmx *pmx)
{
 int i, j, ret;
 ret = 0;

 if (pmx == ((void*)0) || dev == ((void*)0))
  return -EINVAL;

 mutex_lock(&pmx_mutex);


 for (i = 0; i < ARRAY_SIZE(pmx_settings); i++) {

  if (pmx_settings[i]->dev == ((void*)0) || pmx_settings[i] == pmx)
   continue;

  for (j = 0; j < ARRAY_SIZE(pmx_registers); j++) {

   if (pmx_settings[i]->onmask[j].mask & pmx->
    onmask[j].mask) {

    WARN(1, "padmux: cannot activate "
     "setting. Bit conflict with "
     "an active setting\n");

    ret = -EUSERS;
    goto exit;
   }
  }
 }
 update_registers(pmx, 1);
 pmx->activated = 1;
 dev_dbg(dev, "padmux: setting nr %d is activated\n",
  pmx->setting);

exit:
 mutex_unlock(&pmx_mutex);
 return ret;
}
