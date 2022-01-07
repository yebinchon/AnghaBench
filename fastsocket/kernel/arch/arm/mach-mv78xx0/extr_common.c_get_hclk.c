
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAMPLE_AT_RESET_LOW ;
 int panic (char*,int) ;
 int readl (int ) ;

__attribute__((used)) static int get_hclk(void)
{
 int hclk;




 switch ((readl(SAMPLE_AT_RESET_LOW) >> 5) & 7) {
 case 0:
  hclk = 166666667;
  break;
 case 1:
  hclk = 200000000;
  break;
 case 2:
  hclk = 266666667;
  break;
 case 3:
  hclk = 333333333;
  break;
 case 4:
  hclk = 400000000;
  break;
 default:
  panic("unknown HCLK PLL setting: %.8x\n",
   readl(SAMPLE_AT_RESET_LOW));
 }

 return hclk;
}
