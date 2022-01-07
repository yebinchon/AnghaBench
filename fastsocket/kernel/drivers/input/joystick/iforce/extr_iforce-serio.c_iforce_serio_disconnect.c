
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct iforce {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct iforce*) ;
 int serio_close (struct serio*) ;
 struct iforce* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void iforce_serio_disconnect(struct serio *serio)
{
 struct iforce *iforce = serio_get_drvdata(serio);

 input_unregister_device(iforce->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(iforce);
}
