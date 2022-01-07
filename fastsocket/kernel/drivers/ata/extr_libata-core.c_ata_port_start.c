
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int prd; int prd_dma; struct device* dev; } ;


 int ATA_PRD_TBL_SZ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dmam_alloc_coherent (struct device*,int ,int *,int ) ;

int ata_port_start(struct ata_port *ap)
{
 struct device *dev = ap->dev;

 ap->prd = dmam_alloc_coherent(dev, ATA_PRD_TBL_SZ, &ap->prd_dma,
          GFP_KERNEL);
 if (!ap->prd)
  return -ENOMEM;

 return 0;
}
