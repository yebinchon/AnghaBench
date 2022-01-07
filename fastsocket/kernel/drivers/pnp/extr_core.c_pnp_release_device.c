
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct pnp_dev*) ;
 int pnp_free_ids (struct pnp_dev*) ;
 int pnp_free_options (struct pnp_dev*) ;
 int pnp_free_resources (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static void pnp_release_device(struct device *dmdev)
{
 struct pnp_dev *dev = to_pnp_dev(dmdev);

 pnp_free_ids(dev);
 pnp_free_resources(dev);
 pnp_free_options(dev);
 kfree(dev);
}
