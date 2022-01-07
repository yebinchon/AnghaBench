
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int* gpio; int * gpio_pol; } ;
struct zoran {TYPE_1__ card; } ;


 int GPIO (struct zoran*,int,int) ;


 size_t ZR_GPIO_VID_DIR ;
 int lml33dpath ;

__attribute__((used)) static void
set_videobus_dir (struct zoran *zr,
    int val)
{
 switch (zr->card.type) {
 case 129:
 case 128:
  if (lml33dpath == 0)
   GPIO(zr, 5, val);
  else
   GPIO(zr, 5, 1);
  break;
 default:
  GPIO(zr, zr->card.gpio[ZR_GPIO_VID_DIR],
       zr->card.gpio_pol[ZR_GPIO_VID_DIR] ? !val : val);
  break;
 }
}
