
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ds1307 {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 struct ds1307* i2c_get_clientdata (struct i2c_client*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t ds1307_irq(int irq, void *dev_id)
{
 struct i2c_client *client = dev_id;
 struct ds1307 *ds1307 = i2c_get_clientdata(client);

 disable_irq_nosync(irq);
 schedule_work(&ds1307->work);
 return IRQ_HANDLED;
}
