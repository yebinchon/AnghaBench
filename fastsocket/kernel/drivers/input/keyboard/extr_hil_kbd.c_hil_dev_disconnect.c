
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct hil_dev {int dev; } ;


 int BUG_ON (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct hil_dev*) ;
 int serio_close (struct serio*) ;
 struct hil_dev* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void hil_dev_disconnect(struct serio *serio)
{
 struct hil_dev *dev = serio_get_drvdata(serio);

 BUG_ON(dev == ((void*)0));

 serio_close(serio);
 input_unregister_device(dev->dev);
 serio_set_drvdata(serio, ((void*)0));
 kfree(dev);
}
