
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; int end; } ;
struct pnp_resource {struct resource res; } ;
struct pnp_dev {int dev; } ;


 int IORESOURCE_DMA ;
 int KERN_DEBUG ;
 int dev_err (int *,char*,int) ;
 int dev_printk (int ,int *,char*,struct resource*) ;
 struct pnp_resource* pnp_new_resource (struct pnp_dev*) ;

struct pnp_resource *pnp_add_dma_resource(struct pnp_dev *dev, int dma,
       int flags)
{
 struct pnp_resource *pnp_res;
 struct resource *res;

 pnp_res = pnp_new_resource(dev);
 if (!pnp_res) {
  dev_err(&dev->dev, "can't add resource for DMA %d\n", dma);
  return ((void*)0);
 }

 res = &pnp_res->res;
 res->flags = IORESOURCE_DMA | flags;
 res->start = dma;
 res->end = dma;

 dev_printk(KERN_DEBUG, &dev->dev, "%pR\n", res);
 return pnp_res;
}
