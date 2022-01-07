
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int pen_irq; } ;
struct platform_device {int dummy; } ;


 int IRQ_GPIO (int) ;
 int IRQ_TYPE_EDGE_BOTH ;
 int MFP_PIN_GPIO15 ;
 int MFP_PIN_GPIO26 ;
 int WM97XX_GPIO_13 ;
 int WM97XX_GPIO_2 ;
 int WM97XX_GPIO_IN ;
 int WM97XX_GPIO_NOTSTICKY ;
 int WM97XX_GPIO_NOWAKE ;
 int WM97XX_GPIO_OUT ;
 int WM97XX_GPIO_POL_HIGH ;
 int WM97XX_GPIO_STICKY ;
 int WM97XX_GPIO_WAKE ;
 scalar_t__ cpu_is_pxa320 () ;
 int mfp_to_gpio (int ) ;
 struct wm97xx* platform_get_drvdata (struct platform_device*) ;
 int set_irq_type (int ,int ) ;
 int wm97xx_config_gpio (struct wm97xx*,int ,int ,int ,int ,int ) ;
 int wm97xx_register_mach_ops (struct wm97xx*,int *) ;
 int zylonite_mach_ops ;

__attribute__((used)) static int zylonite_wm97xx_probe(struct platform_device *pdev)
{
 struct wm97xx *wm = platform_get_drvdata(pdev);
 int gpio_touch_irq;

 if (cpu_is_pxa320())
  gpio_touch_irq = mfp_to_gpio(MFP_PIN_GPIO15);
 else
  gpio_touch_irq = mfp_to_gpio(MFP_PIN_GPIO26);

 wm->pen_irq = IRQ_GPIO(gpio_touch_irq);
 set_irq_type(IRQ_GPIO(gpio_touch_irq), IRQ_TYPE_EDGE_BOTH);

 wm97xx_config_gpio(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
      WM97XX_GPIO_POL_HIGH,
      WM97XX_GPIO_STICKY,
      WM97XX_GPIO_WAKE);
 wm97xx_config_gpio(wm, WM97XX_GPIO_2, WM97XX_GPIO_OUT,
      WM97XX_GPIO_POL_HIGH,
      WM97XX_GPIO_NOTSTICKY,
      WM97XX_GPIO_NOWAKE);

 return wm97xx_register_mach_ops(wm, &zylonite_mach_ops);
}
