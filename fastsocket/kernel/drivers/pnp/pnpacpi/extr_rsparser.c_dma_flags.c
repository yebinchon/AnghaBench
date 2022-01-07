
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;
 int IORESOURCE_DMA_16BIT ;
 int IORESOURCE_DMA_8AND16BIT ;
 int IORESOURCE_DMA_8BIT ;
 int IORESOURCE_DMA_COMPATIBLE ;
 int IORESOURCE_DMA_MASTER ;
 int IORESOURCE_DMA_TYPEA ;
 int IORESOURCE_DMA_TYPEB ;
 int IORESOURCE_DMA_TYPEF ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int dma_flags(struct pnp_dev *dev, int type, int bus_master,
       int transfer)
{
 int flags = 0;

 if (bus_master)
  flags |= IORESOURCE_DMA_MASTER;
 switch (type) {
 case 134:
  flags |= IORESOURCE_DMA_COMPATIBLE;
  break;
 case 130:
  flags |= IORESOURCE_DMA_TYPEA;
  break;
 case 129:
  flags |= IORESOURCE_DMA_TYPEB;
  break;
 case 128:
  flags |= IORESOURCE_DMA_TYPEF;
  break;
 default:

  flags |= IORESOURCE_DMA_COMPATIBLE;
  dev_err(&dev->dev, "invalid DMA type %d\n", type);
 }
 switch (transfer) {
 case 132:
  flags |= IORESOURCE_DMA_8BIT;
  break;
 case 131:
  flags |= IORESOURCE_DMA_8AND16BIT;
  break;
 case 133:
  flags |= IORESOURCE_DMA_16BIT;
  break;
 default:

  flags |= IORESOURCE_DMA_8AND16BIT;
  dev_err(&dev->dev, "invalid DMA transfer type %d\n", transfer);
 }

 return flags;
}
