
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx23885_dev {int dummy; } ;


 int F300_CLK ;
 int F300_DATA ;
 int f300_get_line (struct cx23885_dev*,int ) ;
 int f300_set_line (struct cx23885_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u8 f300_get_byte(struct cx23885_dev *dev)
{
 u8 i, dta = 0;

 for (i = 0; i < 8; i++) {
  f300_set_line(dev, F300_CLK, 0);
  udelay(30);
  dta <<= 1;
  f300_set_line(dev, F300_CLK, 1);
  udelay(30);
  dta |= f300_get_line(dev, F300_DATA);

 }

 return dta;
}
