
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char read_data () ;
 int write_address (unsigned char) ;

unsigned char isapnp_read_byte(unsigned char idx)
{
 write_address(idx);
 return read_data();
}
