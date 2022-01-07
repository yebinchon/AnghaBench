
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc; } ;
struct mcu {int np; TYPE_1__ of_gc; } ;


 int gpiochip_remove (int *) ;
 int of_node_put (int ) ;

__attribute__((used)) static int mcu_gpiochip_remove(struct mcu *mcu)
{
 int ret;

 ret = gpiochip_remove(&mcu->of_gc.gc);
 if (ret)
  return ret;
 of_node_put(mcu->np);

 return 0;
}
