
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IRQ_falling_edge ;
 int GPIO_IRQ_level_high ;
 int GPIO_IRQ_level_low ;
 int GPIO_IRQ_rising_edge ;
 int IXP2000_GPIO_FEDR ;
 int IXP2000_GPIO_LSHR ;
 int IXP2000_GPIO_LSLR ;
 int IXP2000_GPIO_REDR ;
 int ixp2000_reg_wrb (int ,int ) ;
 int ixp2000_reg_write (int ,int ) ;

__attribute__((used)) static void update_gpio_int_csrs(void)
{
 ixp2000_reg_write(IXP2000_GPIO_FEDR, GPIO_IRQ_falling_edge);
 ixp2000_reg_write(IXP2000_GPIO_REDR, GPIO_IRQ_rising_edge);
 ixp2000_reg_write(IXP2000_GPIO_LSLR, GPIO_IRQ_level_low);
 ixp2000_reg_wrb(IXP2000_GPIO_LSHR, GPIO_IRQ_level_high);
}
