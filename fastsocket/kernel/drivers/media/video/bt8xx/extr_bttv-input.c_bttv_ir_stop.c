
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bttv {int c; TYPE_1__* remote; } ;
struct TYPE_2__ {int timer; scalar_t__ rc5_gpio; scalar_t__ polling; } ;


 int bttv_gpio_read (int *) ;
 int bttv_gpio_write (int *,int) ;
 int del_timer_sync (int *) ;
 int flush_scheduled_work () ;

__attribute__((used)) static void bttv_ir_stop(struct bttv *btv)
{
 if (btv->remote->polling) {
  del_timer_sync(&btv->remote->timer);
  flush_scheduled_work();
 }

 if (btv->remote->rc5_gpio) {
  u32 gpio;

  del_timer_sync(&btv->remote->timer);
  flush_scheduled_work();

  gpio = bttv_gpio_read(&btv->c);
  bttv_gpio_write(&btv->c, gpio & ~(1 << 4));
 }
}
