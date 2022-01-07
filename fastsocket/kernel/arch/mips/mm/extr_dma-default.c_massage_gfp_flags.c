
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ coherent_dma_mask; } ;
typedef int gfp_t ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int __GFP_DMA ;
 int __GFP_DMA32 ;
 int __GFP_HIGHMEM ;
 int __GFP_NORETRY ;

__attribute__((used)) static gfp_t massage_gfp_flags(const struct device *dev, gfp_t gfp)
{

 gfp &= ~(__GFP_DMA | __GFP_DMA32 | __GFP_HIGHMEM);
  ;


 gfp |= __GFP_NORETRY;

 return gfp;
}
