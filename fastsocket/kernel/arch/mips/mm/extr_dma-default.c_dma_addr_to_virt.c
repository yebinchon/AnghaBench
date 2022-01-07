
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ phys_to_virt (unsigned long) ;
 unsigned long plat_dma_addr_to_phys (struct device*,int ) ;

__attribute__((used)) static inline unsigned long dma_addr_to_virt(struct device *dev,
 dma_addr_t dma_addr)
{
 unsigned long addr = plat_dma_addr_to_phys(dev, dma_addr);

 return (unsigned long)phys_to_virt(addr);
}
