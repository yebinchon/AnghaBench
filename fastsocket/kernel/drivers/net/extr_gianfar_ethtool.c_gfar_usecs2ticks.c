
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {TYPE_1__* phydev; } ;
struct TYPE_2__ {int speed; } ;


 unsigned int GFAR_100_TIME ;
 unsigned int GFAR_10_TIME ;
 unsigned int GFAR_GBIT_TIME ;




__attribute__((used)) static unsigned int gfar_usecs2ticks(struct gfar_private *priv, unsigned int usecs)
{
 unsigned int count;


 switch (priv->phydev->speed) {
 case 128:
  count = GFAR_GBIT_TIME;
  break;
 case 129:
  count = GFAR_100_TIME;
  break;
 case 130:
 default:
  count = GFAR_10_TIME;
  break;
 }



 return ((usecs * 1000 + count - 1) / count);
}
