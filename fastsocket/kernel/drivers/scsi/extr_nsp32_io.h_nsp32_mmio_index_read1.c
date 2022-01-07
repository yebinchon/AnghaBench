
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 scalar_t__ NSP32_MMIO_OFFSET ;
 unsigned char readb (unsigned short volatile*) ;
 int writeb (unsigned int,unsigned short volatile*) ;

__attribute__((used)) static inline unsigned char nsp32_mmio_index_read1(unsigned long base,
         unsigned int reg)
{
 volatile unsigned short *index_ptr, *data_ptr;

 index_ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + INDEX_REG);
 data_ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + DATA_REG_LOW);

 writeb(reg, index_ptr);
 return readb(data_ptr);
}
