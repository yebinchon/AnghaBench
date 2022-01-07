
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outsl (unsigned int,void*,unsigned long) ;

__attribute__((used)) static inline void nsp32_multi_write4(unsigned int base,
          unsigned int reg,
          void *buf,
          unsigned long count)
{
 outsl(base + reg, buf, count);
}
