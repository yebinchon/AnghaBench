
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tgfx {int sem; TYPE_1__* pd; int timer; int used; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int port; } ;


 int del_timer_sync (int *) ;
 struct tgfx* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parport_release (TYPE_1__*) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static void tgfx_close(struct input_dev *dev)
{
 struct tgfx *tgfx = input_get_drvdata(dev);

 mutex_lock(&tgfx->sem);
 if (!--tgfx->used) {
  del_timer_sync(&tgfx->timer);
  parport_write_control(tgfx->pd->port, 0x00);
  parport_release(tgfx->pd);
 }
 mutex_unlock(&tgfx->sem);
}
