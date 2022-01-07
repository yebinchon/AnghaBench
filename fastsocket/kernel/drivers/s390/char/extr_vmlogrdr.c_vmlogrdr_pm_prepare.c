
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int priv_lock; scalar_t__ dev_in_use; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct vmlogrdr_priv_t* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int pr_err (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int vmlogrdr_pm_prepare(struct device *dev)
{
 int rc;
 struct vmlogrdr_priv_t *priv = dev_get_drvdata(dev);

 rc = 0;
 if (priv) {
  spin_lock_bh(&priv->priv_lock);
  if (priv->dev_in_use)
   rc = -EBUSY;
  spin_unlock_bh(&priv->priv_lock);
 }
 if (rc)
  pr_err("vmlogrdr: device %s is busy. Refuse to suspend.\n",
         dev_name(dev));
 return rc;
}
