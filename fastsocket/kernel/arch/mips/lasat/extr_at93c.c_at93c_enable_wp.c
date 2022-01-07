
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT93C_WDSCMD ;
 int at93c_end_op () ;
 int at93c_init_op () ;
 int at93c_write_bits (int ,int) ;

__attribute__((used)) static void at93c_enable_wp(void)
{
 at93c_init_op();
 at93c_write_bits(AT93C_WDSCMD, 10);
 at93c_end_op();
}
