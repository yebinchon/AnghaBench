
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_SCL ;
 int GPIO_SDA ;
 int IXP4XX_GPIO_OUT ;
 int control_value ;
 int gpio_line_config (int ,int ) ;
 int set_scl (int) ;
 int set_sda (int) ;
 int set_str (int) ;

__attribute__((used)) static void output_control(void)
{
 int i;

 gpio_line_config(GPIO_SCL, IXP4XX_GPIO_OUT);
 gpio_line_config(GPIO_SDA, IXP4XX_GPIO_OUT);

 for (i = 0; i < 8; i++) {
  set_scl(0);
  set_sda(control_value & (0x80 >> i));
  set_scl(1);
 }

 set_str(1);
 set_str(0);

 set_scl(0);
 set_sda(1);
 set_scl(1);
}
