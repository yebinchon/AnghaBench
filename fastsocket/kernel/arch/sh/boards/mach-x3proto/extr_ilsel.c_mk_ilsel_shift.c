
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ilsel_offset (unsigned int) ;

__attribute__((used)) static inline unsigned int mk_ilsel_shift(unsigned int bit)
{
 return (ilsel_offset(bit) & 0x3) << 2;
}
