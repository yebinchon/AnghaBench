
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP32_MMIO_OFFSET ;
 int cpu_to_le16 (unsigned short) ;
 int writew (int ,unsigned short volatile*) ;

__attribute__((used)) static inline void nsp32_mmio_write2(unsigned long base,
         unsigned int index,
         unsigned short val)
{
 volatile unsigned short *ptr;

 ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + index);

 writew(cpu_to_le16(val), ptr);
}
