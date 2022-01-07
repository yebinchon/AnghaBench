
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSABET_BCR_LCD_ON ;
 int ASSABET_BCR_clear (int ) ;
 int ASSABET_BCR_set (int ) ;
 int udelay (int) ;

__attribute__((used)) static void assabet_lcd_power(int on)
{

 if (on) {
  ASSABET_BCR_set(ASSABET_BCR_LCD_ON);
  udelay(500);
 } else

  ASSABET_BCR_clear(ASSABET_BCR_LCD_ON);
}
