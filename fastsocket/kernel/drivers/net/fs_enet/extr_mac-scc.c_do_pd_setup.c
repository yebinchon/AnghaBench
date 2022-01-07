
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int node; } ;
struct TYPE_2__ {void* sccp; void* ep; } ;
struct fs_enet_private {TYPE_1__ scc; int interrupt; int dev; } ;


 int EINVAL ;
 int NO_IRQ ;
 int iounmap (void*) ;
 void* of_iomap (int ,int) ;
 int of_irq_to_resource (int ,int ,int *) ;
 struct of_device* to_of_device (int ) ;

__attribute__((used)) static int do_pd_setup(struct fs_enet_private *fep)
{
 struct of_device *ofdev = to_of_device(fep->dev);

 fep->interrupt = of_irq_to_resource(ofdev->node, 0, ((void*)0));
 if (fep->interrupt == NO_IRQ)
  return -EINVAL;

 fep->scc.sccp = of_iomap(ofdev->node, 0);
 if (!fep->scc.sccp)
  return -EINVAL;

 fep->scc.ep = of_iomap(ofdev->node, 1);
 if (!fep->scc.ep) {
  iounmap(fep->scc.sccp);
  return -EINVAL;
 }

 return 0;
}
