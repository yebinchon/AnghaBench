
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {unsigned long (* read_data ) (void*) ;} ;


 unsigned long stub1 (void*) ;

__attribute__((used)) static unsigned long read_reg(void *sohandle,
         struct sh_mobile_lcdc_sys_bus_ops *so)
{
 return so->read_data(sohandle);
}
