
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NSP_MMIO_OFFSET ;
 unsigned char readb (unsigned char*) ;

__attribute__((used)) static inline unsigned char nsp_mmio_read(unsigned long base,
       unsigned int index)
{
 unsigned char *ptr = (unsigned char *)(base + NSP_MMIO_OFFSET + index);

 return readb(ptr);
}
