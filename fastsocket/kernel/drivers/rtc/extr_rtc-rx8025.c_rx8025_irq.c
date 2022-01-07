
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx8025_data {int work; } ;
struct i2c_client {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 struct rx8025_data* i2c_get_clientdata (struct i2c_client*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t rx8025_irq(int irq, void *dev_id)
{
 struct i2c_client *client = dev_id;
 struct rx8025_data *rx8025 = i2c_get_clientdata(client);

 disable_irq_nosync(irq);
 schedule_work(&rx8025->work);
 return IRQ_HANDLED;
}
