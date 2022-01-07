
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw {int dev; } ;
struct serio {int dummy; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct tw*) ;
 int serio_close (struct serio*) ;
 struct tw* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void tw_disconnect(struct serio *serio)
{
 struct tw *tw = serio_get_drvdata(serio);

 input_get_device(tw->dev);
 input_unregister_device(tw->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(tw->dev);
 kfree(tw);
}
