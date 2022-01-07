
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short inw (unsigned int) ;

__attribute__((used)) static inline unsigned short nsp32_read2(unsigned int base,
      unsigned int index)
{
 return inw(base + index);
}
