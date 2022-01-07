
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AT93C_ADDR_MAX ;
 int AT93C_WCMD ;
 int at93c_disable_wp () ;
 int at93c_enable_wp () ;
 int at93c_end_op () ;
 int at93c_init_op () ;
 int at93c_wait () ;
 int at93c_write_bits (int,int) ;

void at93c_write(u8 addr, u8 data)
{
 at93c_disable_wp();
 at93c_init_op();
 at93c_write_bits((addr & AT93C_ADDR_MAX)|AT93C_WCMD, 10);
 at93c_write_bits(data, 8);
 at93c_end_op();
 at93c_wait();
 at93c_enable_wp();
}
