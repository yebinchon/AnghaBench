
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int ,int) ;

__attribute__((used)) static void write_memory_start(void *sohandle,
          struct sh_mobile_lcdc_sys_bus_ops *so)
{
 write_reg(sohandle, so, 0, 0x2c);
}
