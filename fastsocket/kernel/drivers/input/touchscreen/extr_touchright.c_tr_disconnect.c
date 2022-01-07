
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr {int dev; } ;
struct serio {int dummy; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct tr*) ;
 int serio_close (struct serio*) ;
 struct tr* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void tr_disconnect(struct serio *serio)
{
 struct tr *tr = serio_get_drvdata(serio);

 input_get_device(tr->dev);
 input_unregister_device(tr->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(tr->dev);
 kfree(tr);
}
