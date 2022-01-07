
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCLP_CMDW_CONFIGURE_CPU ;
 int do_cpu_configure (int) ;

int sclp_cpu_configure(u8 cpu)
{
 return do_cpu_configure(SCLP_CMDW_CONFIGURE_CPU | cpu << 8);
}
