
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {scalar_t__ status; } ;


 scalar_t__ PNP_ATTACHED ;
 scalar_t__ PNP_READY ;
 int pnp_disable_dev (struct pnp_dev*) ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnp_device_detach(struct pnp_dev *pnp_dev)
{
 spin_lock(&pnp_lock);
 if (pnp_dev->status == PNP_ATTACHED)
  pnp_dev->status = PNP_READY;
 spin_unlock(&pnp_lock);
 pnp_disable_dev(pnp_dev);
}
