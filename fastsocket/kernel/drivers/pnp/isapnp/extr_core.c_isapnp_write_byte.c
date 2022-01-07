
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_address (unsigned char) ;
 int write_data (unsigned char) ;

void isapnp_write_byte(unsigned char idx, unsigned char val)
{
 write_address(idx);
 write_data(val);
}
