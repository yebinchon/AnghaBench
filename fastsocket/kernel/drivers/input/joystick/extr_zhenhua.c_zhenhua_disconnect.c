
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zhenhua {int dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct zhenhua*) ;
 int serio_close (struct serio*) ;
 struct zhenhua* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void zhenhua_disconnect(struct serio *serio)
{
 struct zhenhua *zhenhua = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(zhenhua->dev);
 kfree(zhenhua);
}
