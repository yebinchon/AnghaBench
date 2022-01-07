
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct h3600_dev {int dev; } ;


 int IRQ_GPIO_BITSY_ACTION_BUTTON ;
 int IRQ_GPIO_BITSY_NPOWER_BUTTON ;
 int free_irq (int ,int *) ;
 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct h3600_dev*) ;
 int serio_close (struct serio*) ;
 struct h3600_dev* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void h3600ts_disconnect(struct serio *serio)
{
 struct h3600_dev *ts = serio_get_drvdata(serio);

 free_irq(IRQ_GPIO_BITSY_ACTION_BUTTON, &ts->dev);
 free_irq(IRQ_GPIO_BITSY_NPOWER_BUTTON, &ts->dev);
 input_get_device(ts->dev);
 input_unregister_device(ts->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(ts->dev);
 kfree(ts);
}
