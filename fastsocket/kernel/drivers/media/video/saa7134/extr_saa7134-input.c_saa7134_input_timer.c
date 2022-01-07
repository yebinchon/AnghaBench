
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int polling; int timer; } ;


 int build_key (struct saa7134_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void saa7134_input_timer(unsigned long data)
{
 struct saa7134_dev *dev = (struct saa7134_dev *)data;
 struct saa7134_card_ir *ir = dev->remote;

 build_key(dev);
 mod_timer(&ir->timer, jiffies + msecs_to_jiffies(ir->polling));
}
