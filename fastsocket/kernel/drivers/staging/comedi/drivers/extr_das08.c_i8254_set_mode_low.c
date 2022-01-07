
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I8254_CTRL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void i8254_set_mode_low(unsigned int base, int channel,
          unsigned int mode)
{
 outb((channel << 6) | 0x30 | (mode & 0x0F), base + I8254_CTRL);
}
