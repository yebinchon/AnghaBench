
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AT93C_ADDR_MAX ;
 int AT93C_RCMD ;
 int at93c_end_op () ;
 int at93c_init_op () ;
 int at93c_read_byte () ;
 int at93c_write_bits (int,int) ;

u8 at93c_read(u8 addr)
{
 u8 byte;
 at93c_init_op();
 at93c_write_bits((addr & AT93C_ADDR_MAX)|AT93C_RCMD, 10);
 byte = at93c_read_byte();
 at93c_end_op();
 return byte;
}
