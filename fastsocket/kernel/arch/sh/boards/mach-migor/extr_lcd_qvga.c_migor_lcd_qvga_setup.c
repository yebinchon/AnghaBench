
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int magic0_data ;
 int magic1_data ;
 int magic2_data ;
 int magic3_data ;
 int mdelay (int) ;
 int migor_lcd_qvga_seq (void*,struct sh_mobile_lcdc_sys_bus_ops*,int ,int ) ;
 int pr_info (char*) ;
 int read_reg16 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int ) ;
 int reset_lcd_module () ;
 int sync_data ;
 int write_reg (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ;
 int write_reg16 (void*,struct sh_mobile_lcdc_sys_bus_ops*,int,int) ;

int migor_lcd_qvga_setup(void *board_data, void *sohandle,
    struct sh_mobile_lcdc_sys_bus_ops *so)
{
 unsigned long xres = 320;
 unsigned long yres = 240;
 int k;

 reset_lcd_module();
 migor_lcd_qvga_seq(sohandle, so, sync_data, ARRAY_SIZE(sync_data));

 if (read_reg16(sohandle, so, 0) != 0x1505)
  return -ENODEV;

 pr_info("Migo-R QVGA LCD Module detected.\n");

 migor_lcd_qvga_seq(sohandle, so, sync_data, ARRAY_SIZE(sync_data));
 write_reg16(sohandle, so, 0x00A4, 0x0001);
 mdelay(10);

 migor_lcd_qvga_seq(sohandle, so, magic0_data, ARRAY_SIZE(magic0_data));
 mdelay(100);

 migor_lcd_qvga_seq(sohandle, so, magic1_data, ARRAY_SIZE(magic1_data));
 write_reg16(sohandle, so, 0x0050, 0xef - (yres - 1));
 write_reg16(sohandle, so, 0x0051, 0x00ef);
 write_reg16(sohandle, so, 0x0052, 0x0000);
 write_reg16(sohandle, so, 0x0053, xres - 1);

 migor_lcd_qvga_seq(sohandle, so, magic2_data, ARRAY_SIZE(magic2_data));
 mdelay(10);

 migor_lcd_qvga_seq(sohandle, so, magic3_data, ARRAY_SIZE(magic3_data));
 mdelay(40);



 write_reg16(sohandle, so, 0x0020, 0x0000);
 write_reg16(sohandle, so, 0x0021, 0x0000);

 for (k = 0; k < (xres * 256); k++)
  write_reg16(sohandle, so, 0x0022, 0x0000);

 write_reg16(sohandle, so, 0x0020, 0x0000);
 write_reg16(sohandle, so, 0x0021, 0x0000);
 write_reg16(sohandle, so, 0x0007, 0x0173);
 mdelay(40);


 write_reg(sohandle, so, 0x00, 0x22);
 mdelay(100);
 return 0;
}
