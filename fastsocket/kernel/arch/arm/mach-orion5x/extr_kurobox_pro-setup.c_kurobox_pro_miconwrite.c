
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int TX ;
 int UART1_REG (int ) ;
 int UART_LSR_THRE ;
 int barrier () ;
 int readl (int ) ;
 int writel (unsigned char const,int ) ;

__attribute__((used)) static int kurobox_pro_miconwrite(const unsigned char *buf, int count)
{
 int i = 0;

 while (count--) {
  while (!(readl(UART1_REG(LSR)) & UART_LSR_THRE))
   barrier();
  writel(buf[i++], UART1_REG(TX));
 }

 return 0;
}
