
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmx {scalar_t__ setting; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ setting; int * dev; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int EINVAL ;
 int ENOENT ;
 int WARN (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmx_mutex ;
 TYPE_1__** pmx_settings ;

int pmx_put(struct device *dev, struct pmx *pmx)
{
 int i;
 int ret = -ENOENT;

 if (pmx == ((void*)0) || dev == ((void*)0))
  return -EINVAL;

 mutex_lock(&pmx_mutex);
 for (i = 0; i < ARRAY_SIZE(pmx_settings); i++) {

  if (pmx->setting == pmx_settings[i]->setting) {

   if (dev != pmx->dev) {
    WARN(1, "padmux: cannot release handle as "
     "it is bound to another consumer\n");
    ret = -EINVAL;
    break;
   } else {
    pmx_settings[i]->dev = ((void*)0);
    ret = 0;
    break;
   }
  }
 }
 mutex_unlock(&pmx_mutex);

 return ret;
}
