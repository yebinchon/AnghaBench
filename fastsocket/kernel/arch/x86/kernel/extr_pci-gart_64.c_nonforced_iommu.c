
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dma_capable (struct device*,unsigned long,size_t) ;

__attribute__((used)) static inline int
nonforced_iommu(struct device *dev, unsigned long addr, size_t size)
{
 return !dma_capable(dev, addr, size);
}
