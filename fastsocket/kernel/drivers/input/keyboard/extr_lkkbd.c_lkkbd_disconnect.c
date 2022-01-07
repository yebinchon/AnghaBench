
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct lkkbd {int dev; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct lkkbd*) ;
 int serio_close (struct serio*) ;
 struct lkkbd* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void
lkkbd_disconnect (struct serio *serio)
{
 struct lkkbd *lk = serio_get_drvdata (serio);

 input_get_device (lk->dev);
 input_unregister_device (lk->dev);
 serio_close (serio);
 serio_set_drvdata (serio, ((void*)0));
 input_put_device (lk->dev);
 kfree (lk);
}
