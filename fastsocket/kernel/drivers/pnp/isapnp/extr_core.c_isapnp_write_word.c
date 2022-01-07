
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isapnp_write_byte (unsigned char,unsigned short) ;

__attribute__((used)) static void isapnp_write_word(unsigned char idx, unsigned short val)
{
 isapnp_write_byte(idx, val >> 8);
 isapnp_write_byte(idx + 1, val);
}
