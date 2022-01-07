
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_device {int num_phys; int * ex_phy; } ;
struct domain_device {struct expander_device ex_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int sas_ex_phy_discover (struct domain_device*,int) ;

__attribute__((used)) static int sas_expander_discover(struct domain_device *dev)
{
 struct expander_device *ex = &dev->ex_dev;
 int res = -ENOMEM;

 ex->ex_phy = kzalloc(sizeof(*ex->ex_phy)*ex->num_phys, GFP_KERNEL);
 if (!ex->ex_phy)
  return -ENOMEM;

 res = sas_ex_phy_discover(dev, -1);
 if (res)
  goto out_err;

 return 0;
 out_err:
 kfree(ex->ex_phy);
 ex->ex_phy = ((void*)0);
 return res;
}
