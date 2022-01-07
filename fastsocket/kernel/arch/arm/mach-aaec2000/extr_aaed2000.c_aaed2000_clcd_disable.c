
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clcd_fb {int dummy; } ;


 int AAED_EGPIO_LCD_PWR_EN ;
 int AAED_EXT_GPIO ;

__attribute__((used)) static void aaed2000_clcd_disable(struct clcd_fb *fb)
{
 AAED_EXT_GPIO &= ~AAED_EGPIO_LCD_PWR_EN;
}
