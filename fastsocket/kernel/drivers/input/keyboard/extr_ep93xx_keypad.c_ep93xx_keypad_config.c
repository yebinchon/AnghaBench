
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_keypad_platform_data {int flags; unsigned int debounce; unsigned int prescale; } ;
struct ep93xx_keypad {int clk; struct ep93xx_keypad_platform_data* pdata; } ;


 int EP93XX_KEYPAD_BACK_DRIVE ;
 int EP93XX_KEYPAD_DIAG_MODE ;
 int EP93XX_KEYPAD_DISABLE_3_KEY ;
 int EP93XX_KEYPAD_KDIV ;
 int EP93XX_KEYPAD_TEST_MODE ;
 int KEY_INIT ;
 unsigned int KEY_INIT_BACK ;
 unsigned int KEY_INIT_DBNC_MASK ;
 unsigned int KEY_INIT_DBNC_SHIFT ;
 unsigned int KEY_INIT_DIAG ;
 unsigned int KEY_INIT_DIS3KY ;
 unsigned int KEY_INIT_PRSCL_MASK ;
 unsigned int KEY_INIT_PRSCL_SHIFT ;
 unsigned int KEY_INIT_T2 ;
 int clk_set_rate (int ,int) ;
 int keypad_writel (unsigned int,int ) ;

__attribute__((used)) static void ep93xx_keypad_config(struct ep93xx_keypad *keypad)
{
 struct ep93xx_keypad_platform_data *pdata = keypad->pdata;
 unsigned int val = 0;

 clk_set_rate(keypad->clk, pdata->flags & EP93XX_KEYPAD_KDIV);

 if (pdata->flags & EP93XX_KEYPAD_DISABLE_3_KEY)
  val |= KEY_INIT_DIS3KY;
 if (pdata->flags & EP93XX_KEYPAD_DIAG_MODE)
  val |= KEY_INIT_DIAG;
 if (pdata->flags & EP93XX_KEYPAD_BACK_DRIVE)
  val |= KEY_INIT_BACK;
 if (pdata->flags & EP93XX_KEYPAD_TEST_MODE)
  val |= KEY_INIT_T2;

 val |= ((pdata->debounce << KEY_INIT_DBNC_SHIFT) & KEY_INIT_DBNC_MASK);

 val |= ((pdata->prescale << KEY_INIT_PRSCL_SHIFT) & KEY_INIT_PRSCL_MASK);

 keypad_writel(val, KEY_INIT);
}
