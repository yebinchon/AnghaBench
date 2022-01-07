
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int mdelay (int) ;
 int read_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*) ;
 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ;

__attribute__((used)) static unsigned long read_device_code(void *sohandle,
          struct sh_mobile_lcdc_sys_bus_ops *so)
{
 unsigned long device_code;


 write_reg(sohandle, so, 0, 0xb0);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0xb1);
 write_reg(sohandle, so, 1, 0x00);


 write_reg(sohandle, so, 0, 0xbf);
 mdelay(50);


 read_reg(sohandle, so);


 device_code = ((read_reg(sohandle, so) & 0xff) << 24);
 device_code |= ((read_reg(sohandle, so) & 0xff) << 16);
 device_code |= ((read_reg(sohandle, so) & 0xff) << 8);
 device_code |= (read_reg(sohandle, so) & 0xff);

 return device_code;
}
