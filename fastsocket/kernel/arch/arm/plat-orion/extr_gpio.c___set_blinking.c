
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPIO_BLINK_EN (unsigned int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void __set_blinking(unsigned pin, int blink)
{
 u32 u;

 u = readl(GPIO_BLINK_EN(pin));
 if (blink)
  u |= 1 << (pin & 31);
 else
  u &= ~(1 << (pin & 31));
 writel(u, GPIO_BLINK_EN(pin));
}
