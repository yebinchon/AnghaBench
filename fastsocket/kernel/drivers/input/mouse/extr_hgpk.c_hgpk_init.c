
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int powered; int recalib_wq; struct psmouse* psmouse; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int hgpk_recalib_work ;
 int hgpk_register (struct psmouse*) ;
 int kfree (struct hgpk_data*) ;
 struct hgpk_data* kzalloc (int,int ) ;
 int psmouse_reset (struct psmouse*) ;

int hgpk_init(struct psmouse *psmouse)
{
 struct hgpk_data *priv;
 int err = -ENOMEM;

 priv = kzalloc(sizeof(struct hgpk_data), GFP_KERNEL);
 if (!priv)
  goto alloc_fail;

 psmouse->private = priv;
 priv->psmouse = psmouse;
 priv->powered = 1;
 INIT_DELAYED_WORK(&priv->recalib_wq, hgpk_recalib_work);

 err = psmouse_reset(psmouse);
 if (err)
  goto init_fail;

 err = hgpk_register(psmouse);
 if (err)
  goto init_fail;

 return 0;

init_fail:
 kfree(priv);
alloc_fail:
 return err;
}
