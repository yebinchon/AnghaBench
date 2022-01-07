
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u16 ;


 int __dma_memcpy (unsigned long,unsigned short,unsigned long,int ,unsigned short,unsigned short) ;
 int blackfin_dcache_invalidate_range (unsigned long,unsigned long) ;

__attribute__((used)) static void _dma_in(unsigned long addr, unsigned long buf, unsigned short len,
                    u16 size, u16 dma_size)
{
 blackfin_dcache_invalidate_range(buf, buf + len * size);
 __dma_memcpy(buf, size, addr, 0, len, dma_size);
}
