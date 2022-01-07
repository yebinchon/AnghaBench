
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct ene_device {int dummy; } ;


 int ene_enable_wake (struct ene_device*,int) ;
 struct ene_device* pnp_get_drvdata (struct pnp_dev*) ;

__attribute__((used)) static void ene_shutdown(struct pnp_dev *pnp_dev)
{
 struct ene_device *dev = pnp_get_drvdata(pnp_dev);
 ene_enable_wake(dev, 1);
}
