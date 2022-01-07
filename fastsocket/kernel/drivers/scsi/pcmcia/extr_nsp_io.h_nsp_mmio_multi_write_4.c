
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writel (unsigned long,unsigned long*) ;

__attribute__((used)) static inline void nsp_mmio_multi_write_4(unsigned long base,
       unsigned int Register,
       void *buf,
       unsigned long count)
{
 unsigned long *ptr = (unsigned long *)(base + Register);
 unsigned long *tmp = (unsigned long *)buf;
 int i;



 for (i = 0; i < count; i++) {
  writel(*tmp, ptr);

  tmp++;
 }
}
