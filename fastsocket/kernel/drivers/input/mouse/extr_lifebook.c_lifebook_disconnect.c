
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct lifebook_data* private; } ;
struct lifebook_data {int dev2; } ;


 int input_unregister_device (int ) ;
 int kfree (struct lifebook_data*) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static void lifebook_disconnect(struct psmouse *psmouse)
{
 struct lifebook_data *priv = psmouse->private;

 psmouse_reset(psmouse);
 if (priv) {
  input_unregister_device(priv->dev2);
  kfree(priv);
 }
 psmouse->private = ((void*)0);
}
