
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 unsigned int bttv_num ;
 struct bttv** bttvs ;
 int gpio_inout (unsigned long,unsigned long) ;

int bttv_gpio_enable(unsigned int card, unsigned long mask, unsigned long data)
{
 struct bttv *btv;

 if (card >= bttv_num) {
  return -EINVAL;
 }

 btv = bttvs[card];
 if (!btv)
  return -ENODEV;

 gpio_inout(mask,data);
 if (bttv_gpio)
  bttv_gpio_tracking(btv,"extern enable");
 return 0;
}
