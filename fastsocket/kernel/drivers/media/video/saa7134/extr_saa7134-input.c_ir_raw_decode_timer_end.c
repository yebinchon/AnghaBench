
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int active; int dev; } ;


 int ir_raw_event_handle (int ) ;

__attribute__((used)) static void ir_raw_decode_timer_end(unsigned long data)
{
 struct saa7134_dev *dev = (struct saa7134_dev *)data;
 struct saa7134_card_ir *ir = dev->remote;

 ir_raw_event_handle(dev->remote->dev);

 ir->active = 0;
}
