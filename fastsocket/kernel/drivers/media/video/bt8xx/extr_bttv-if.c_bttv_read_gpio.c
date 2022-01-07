
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {scalar_t__ shutdown; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int bttv_num ;
 struct bttv** bttvs ;
 unsigned long gpio_read () ;

int bttv_read_gpio(unsigned int card, unsigned long *data)
{
 struct bttv *btv;

 if (card >= bttv_num) {
  return -EINVAL;
 }

 btv = bttvs[card];
 if (!btv)
  return -ENODEV;

 if(btv->shutdown) {
  return -ENODEV;
 }



 *data = gpio_read();
 return 0;
}
