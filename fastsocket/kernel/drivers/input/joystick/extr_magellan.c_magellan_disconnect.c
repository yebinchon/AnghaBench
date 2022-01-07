
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct magellan {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct magellan*) ;
 int serio_close (struct serio*) ;
 struct magellan* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void magellan_disconnect(struct serio *serio)
{
 struct magellan* magellan = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(magellan->dev);
 kfree(magellan);
}
