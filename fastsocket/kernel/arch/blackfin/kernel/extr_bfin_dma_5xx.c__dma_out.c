
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u16 ;


 int __dma_memcpy (unsigned long,int ,unsigned long,unsigned short,unsigned short,unsigned short) ;
 int blackfin_dcache_flush_range (unsigned long,unsigned long) ;

__attribute__((used)) static void _dma_out(unsigned long addr, unsigned long buf, unsigned short len,
                     u16 size, u16 dma_size)
{
 blackfin_dcache_flush_range(buf, buf + len * size);
 __dma_memcpy(addr, 0, buf, size, len, dma_size);
}
