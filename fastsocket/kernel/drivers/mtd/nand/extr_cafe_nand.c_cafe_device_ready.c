
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mtd_info {struct cafe_priv* priv; } ;
struct cafe_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GLOBAL_IRQ ;
 int GLOBAL_IRQ_MASK ;
 int NAND_IRQ ;
 int NAND_STATUS ;
 int cafe_dev_dbg (int *,char*,char*,int,int,int,int) ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int,int ) ;

__attribute__((used)) static int cafe_device_ready(struct mtd_info *mtd)
{
 struct cafe_priv *cafe = mtd->priv;
 int result = !!(cafe_readl(cafe, NAND_STATUS) | 0x40000000);
 uint32_t irqs = cafe_readl(cafe, NAND_IRQ);

 cafe_writel(cafe, irqs, NAND_IRQ);

 cafe_dev_dbg(&cafe->pdev->dev, "NAND device is%s ready, IRQ %x (%x) (%x,%x)\n",
  result?"":" not", irqs, cafe_readl(cafe, NAND_IRQ),
  cafe_readl(cafe, GLOBAL_IRQ), cafe_readl(cafe, GLOBAL_IRQ_MASK));

 return result;
}
