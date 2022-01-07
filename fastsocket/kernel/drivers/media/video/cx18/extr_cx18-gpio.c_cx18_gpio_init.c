
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cx18 {int gpio_dir; int gpio_val; int gpio_lock; TYPE_3__* card; } ;
struct TYPE_4__ {int direction; int initial_value; } ;
struct TYPE_6__ {int xceive_pin; TYPE_2__* tuners; TYPE_1__ gpio_init; } ;
struct TYPE_5__ {scalar_t__ tuner; } ;


 int CX18_DEBUG_INFO (char*,int ,int ,int ,int ) ;
 int CX18_REG_GPIO_DIR1 ;
 int CX18_REG_GPIO_DIR2 ;
 int CX18_REG_GPIO_OUT1 ;
 int CX18_REG_GPIO_OUT2 ;
 scalar_t__ TUNER_XC2028 ;
 int cx18_read_reg (struct cx18*,int ) ;
 int gpio_write (struct cx18*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cx18_gpio_init(struct cx18 *cx)
{
 mutex_lock(&cx->gpio_lock);
 cx->gpio_dir = cx->card->gpio_init.direction;
 cx->gpio_val = cx->card->gpio_init.initial_value;

 if (cx->card->tuners[0].tuner == TUNER_XC2028) {
  cx->gpio_dir |= 1 << cx->card->xceive_pin;
  cx->gpio_val |= 1 << cx->card->xceive_pin;
 }

 if (cx->gpio_dir == 0) {
  mutex_unlock(&cx->gpio_lock);
  return;
 }

 CX18_DEBUG_INFO("GPIO initial dir: %08x/%08x out: %08x/%08x\n",
   cx18_read_reg(cx, CX18_REG_GPIO_DIR1),
   cx18_read_reg(cx, CX18_REG_GPIO_DIR2),
   cx18_read_reg(cx, CX18_REG_GPIO_OUT1),
   cx18_read_reg(cx, CX18_REG_GPIO_OUT2));

 gpio_write(cx);
 mutex_unlock(&cx->gpio_lock);
}
