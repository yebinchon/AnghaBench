
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPIO_IO_CONF (unsigned int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void __set_direction(unsigned pin, int input)
{
 u32 u;

 u = readl(GPIO_IO_CONF(pin));
 if (input)
  u |= 1 << (pin & 31);
 else
  u &= ~(1 << (pin & 31));
 writel(u, GPIO_IO_CONF(pin));
}
