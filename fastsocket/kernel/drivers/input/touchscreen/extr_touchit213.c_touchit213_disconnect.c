
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchit213 {int dev; } ;
struct serio {int dummy; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct touchit213*) ;
 int serio_close (struct serio*) ;
 struct touchit213* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void touchit213_disconnect(struct serio *serio)
{
 struct touchit213 *touchit213 = serio_get_drvdata(serio);

 input_get_device(touchit213->dev);
 input_unregister_device(touchit213->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(touchit213->dev);
 kfree(touchit213);
}
