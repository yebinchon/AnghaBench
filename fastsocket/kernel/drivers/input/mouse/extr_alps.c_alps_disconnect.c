
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct alps_data* private; } ;
struct alps_data {int dev2; int timer; } ;


 int del_timer_sync (int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct alps_data*) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static void alps_disconnect(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 psmouse_reset(psmouse);
 del_timer_sync(&priv->timer);
 input_unregister_device(priv->dev2);
 kfree(priv);
}
