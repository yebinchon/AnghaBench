
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int dma_addr; } ;


 int DM1105_STADR ;
 int cpu_to_le32 (int ) ;
 int dm_writel (int ,int ) ;

__attribute__((used)) static void dm1105_set_dma_addr(struct dm1105_dev *dev)
{
 dm_writel(DM1105_STADR, cpu_to_le32(dev->dma_addr));
}
