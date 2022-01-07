
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_device {int node; } ;
struct TYPE_4__ {int fccp; } ;
struct TYPE_3__ {int fecp; } ;
struct fs_enet_private {TYPE_2__ fcc; TYPE_1__ fec; int interrupt; int dev; } ;


 int EINVAL ;
 int NO_IRQ ;
 int of_iomap (int ,int ) ;
 int of_irq_to_resource (int ,int ,int *) ;
 struct of_device* to_of_device (int ) ;

__attribute__((used)) static int do_pd_setup(struct fs_enet_private *fep)
{
 struct of_device *ofdev = to_of_device(fep->dev);

 fep->interrupt = of_irq_to_resource(ofdev->node, 0, ((void*)0));
 if (fep->interrupt == NO_IRQ)
  return -EINVAL;

 fep->fec.fecp = of_iomap(ofdev->node, 0);
 if (!fep->fcc.fccp)
  return -EINVAL;

 return 0;
}
