
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int running; int active; int timer; scalar_t__ raw_decode; scalar_t__ polling; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void __saa7134_ir_stop(void *priv)
{
 struct saa7134_dev *dev = priv;
 struct saa7134_card_ir *ir;

 if (!dev || !dev->remote)
  return;

 ir = dev->remote;
 if (!ir->running)
  return;

 if (ir->polling || ir->raw_decode)
  del_timer_sync(&ir->timer);

 ir->active = 0;
 ir->running = 0;

 return;
}
