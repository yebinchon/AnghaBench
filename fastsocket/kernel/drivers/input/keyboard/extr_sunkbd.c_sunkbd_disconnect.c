
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd {int dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct sunkbd*) ;
 int serio_close (struct serio*) ;
 struct sunkbd* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;
 int sunkbd_enable (struct sunkbd*,int) ;

__attribute__((used)) static void sunkbd_disconnect(struct serio *serio)
{
 struct sunkbd *sunkbd = serio_get_drvdata(serio);

 sunkbd_enable(sunkbd, 0);
 input_unregister_device(sunkbd->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(sunkbd);
}
