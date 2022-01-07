
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct fujitsu {int dev; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct fujitsu*) ;
 int serio_close (struct serio*) ;
 struct fujitsu* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void fujitsu_disconnect(struct serio *serio)
{
 struct fujitsu *fujitsu = serio_get_drvdata(serio);

 input_get_device(fujitsu->dev);
 input_unregister_device(fujitsu->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(fujitsu->dev);
 kfree(fujitsu);
}
