
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int WM8350_GPIO_INT_MODE ;
 int WM8350_GPIO_INVERT_ON ;
 int wm8350_clear_bits (struct wm8350*,int ,int) ;
 int wm8350_set_bits (struct wm8350*,int ,int) ;

__attribute__((used)) static int gpio_set_invert(struct wm8350 *wm8350, int gpio, int invert)
{
 if (invert == WM8350_GPIO_INVERT_ON)
  return wm8350_set_bits(wm8350, WM8350_GPIO_INT_MODE, 1 << gpio);
 else
  return wm8350_clear_bits(wm8350,
      WM8350_GPIO_INT_MODE, 1 << gpio);
}
