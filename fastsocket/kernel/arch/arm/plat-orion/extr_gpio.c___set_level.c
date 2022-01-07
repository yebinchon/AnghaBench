
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPIO_OUT (unsigned int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void __set_level(unsigned pin, int high)
{
 u32 u;

 u = readl(GPIO_OUT(pin));
 if (high)
  u |= 1 << (pin & 31);
 else
  u &= ~(1 << (pin & 31));
 writel(u, GPIO_OUT(pin));
}
