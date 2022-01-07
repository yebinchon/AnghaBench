
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_AF ;
 int GPIO_AOUT_SHIFT ;
 int GPIO_BOUT_SHIFT ;
 int GPIO_OCR_MASK ;
 int GPIO_OCR_SHIFT ;
 int GPIO_OUT ;
 int GPIO_PF ;
 int GPIO_PIN_MASK ;
 int GPIO_PORT_MASK ;
 int GPIO_PORT_SHIFT ;
 int GPIO_PUEN ;
 scalar_t__ MXC_DDIR (unsigned int) ;
 scalar_t__ MXC_GIUS (unsigned int) ;
 scalar_t__ MXC_GPR (unsigned int) ;
 scalar_t__ MXC_ICONFA1 (unsigned int) ;
 scalar_t__ MXC_ICONFA2 (unsigned int) ;
 scalar_t__ MXC_ICONFB1 (unsigned int) ;
 scalar_t__ MXC_ICONFB2 (unsigned int) ;
 scalar_t__ MXC_OCR1 (unsigned int) ;
 scalar_t__ MXC_OCR2 (unsigned int) ;
 scalar_t__ MXC_PUEN (unsigned int) ;
 scalar_t__ VA_GPIO_BASE ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;

void mxc_gpio_mode(int gpio_mode)
{
 unsigned int pin = gpio_mode & GPIO_PIN_MASK;
 unsigned int port = (gpio_mode & GPIO_PORT_MASK) >> GPIO_PORT_SHIFT;
 unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
 unsigned int tmp;


 tmp = __raw_readl(VA_GPIO_BASE + MXC_PUEN(port));
 if (gpio_mode & GPIO_PUEN)
  tmp |= (1 << pin);
 else
  tmp &= ~(1 << pin);
 __raw_writel(tmp, VA_GPIO_BASE + MXC_PUEN(port));


 tmp = __raw_readl(VA_GPIO_BASE + MXC_DDIR(port));
 if (gpio_mode & GPIO_OUT)
  tmp |= 1 << pin;
 else
  tmp &= ~(1 << pin);
 __raw_writel(tmp, VA_GPIO_BASE + MXC_DDIR(port));


 tmp = __raw_readl(VA_GPIO_BASE + MXC_GPR(port));
 if (gpio_mode & GPIO_AF)
  tmp |= (1 << pin);
 else
  tmp &= ~(1 << pin);
 __raw_writel(tmp, VA_GPIO_BASE + MXC_GPR(port));


 tmp = __raw_readl(VA_GPIO_BASE + MXC_GIUS(port));
 if (gpio_mode & (GPIO_PF | GPIO_AF))
  tmp &= ~(1 << pin);
 else
  tmp |= (1 << pin);
 __raw_writel(tmp, VA_GPIO_BASE + MXC_GIUS(port));

 if (pin < 16) {
  tmp = __raw_readl(VA_GPIO_BASE + MXC_OCR1(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= (ocr << (pin * 2));
  __raw_writel(tmp, VA_GPIO_BASE + MXC_OCR1(port));

  tmp = __raw_readl(VA_GPIO_BASE + MXC_ICONFA1(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= ((gpio_mode >> GPIO_AOUT_SHIFT) & 3) << (pin * 2);
  __raw_writel(tmp, VA_GPIO_BASE + MXC_ICONFA1(port));

  tmp = __raw_readl(VA_GPIO_BASE + MXC_ICONFB1(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= ((gpio_mode >> GPIO_BOUT_SHIFT) & 3) << (pin * 2);
  __raw_writel(tmp, VA_GPIO_BASE + MXC_ICONFB1(port));
 } else {
  pin -= 16;

  tmp = __raw_readl(VA_GPIO_BASE + MXC_OCR2(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= (ocr << (pin * 2));
  __raw_writel(tmp, VA_GPIO_BASE + MXC_OCR2(port));

  tmp = __raw_readl(VA_GPIO_BASE + MXC_ICONFA2(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= ((gpio_mode >> GPIO_AOUT_SHIFT) & 3) << (pin * 2);
  __raw_writel(tmp, VA_GPIO_BASE + MXC_ICONFA2(port));

  tmp = __raw_readl(VA_GPIO_BASE + MXC_ICONFB2(port));
  tmp &= ~(3 << (pin * 2));
  tmp |= ((gpio_mode >> GPIO_BOUT_SHIFT) & 3) << (pin * 2);
  __raw_writel(tmp, VA_GPIO_BASE + MXC_ICONFB2(port));
 }
}
