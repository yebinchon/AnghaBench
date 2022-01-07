
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isapnp_write_byte (int,unsigned char) ;

__attribute__((used)) static void isapnp_wake(unsigned char csn)
{
 isapnp_write_byte(0x03, csn);
}
