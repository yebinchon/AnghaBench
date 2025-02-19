
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wm8350 {scalar_t__* reg_cache; } ;


 size_t WM8350_BATTERY_CHARGER_CONTROL_1 ;
 size_t WM8350_BATTERY_CHARGER_CONTROL_3 ;
 size_t WM8350_GPIO_FUNCTION_SELECT_1 ;
 size_t WM8350_GPIO_FUNCTION_SELECT_4 ;
 size_t WM8350_SECURITY ;
 scalar_t__ WM8350_UNLOCK_KEY ;

__attribute__((used)) static inline int is_reg_locked(struct wm8350 *wm8350, u8 reg)
{
 if (reg == WM8350_SECURITY ||
     wm8350->reg_cache[WM8350_SECURITY] == WM8350_UNLOCK_KEY)
  return 0;

 if ((reg >= WM8350_GPIO_FUNCTION_SELECT_1 &&
      reg <= WM8350_GPIO_FUNCTION_SELECT_4) ||
     (reg >= WM8350_BATTERY_CHARGER_CONTROL_1 &&
      reg <= WM8350_BATTERY_CHARGER_CONTROL_3))
  return 1;
 return 0;
}
