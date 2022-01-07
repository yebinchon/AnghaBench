
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DATA_REG_LOW ;
 scalar_t__ INDEX_REG ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void nsp32_index_write1(unsigned int base,
          unsigned int reg,
          unsigned char val)
{
 outb(reg, base + INDEX_REG );
 outb(val, base + DATA_REG_LOW);
}
