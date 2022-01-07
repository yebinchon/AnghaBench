
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 scalar_t__ NSP32_MMIO_OFFSET ;
 int writeb (unsigned char,unsigned short volatile*) ;

__attribute__((used)) static inline void nsp32_mmio_index_write1(unsigned long base,
        unsigned int reg,
        unsigned char val)
{
 volatile unsigned short *index_ptr, *data_ptr;

 index_ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + INDEX_REG);
 data_ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + DATA_REG_LOW);

 writeb(reg, index_ptr);
 writeb(val, data_ptr );
}
