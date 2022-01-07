
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static inline unsigned GPCT_DMA_Select_Mask(unsigned gpct_index)
{
 BUG_ON(gpct_index > 1);
 return 0xf << (4 * gpct_index);
}
