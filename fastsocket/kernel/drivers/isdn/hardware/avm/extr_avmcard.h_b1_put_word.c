
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b1_put_byte (unsigned int,unsigned int) ;

__attribute__((used)) static inline void b1_put_word(unsigned int base, unsigned int val)
{
 b1_put_byte(base, val & 0xff);
 b1_put_byte(base, (val >> 8) & 0xff);
 b1_put_byte(base, (val >> 16) & 0xff);
 b1_put_byte(base, (val >> 24) & 0xff);
}
