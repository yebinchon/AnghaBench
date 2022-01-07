
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAMPLE_AT_RESET_HIGH ;
 int panic (char*,int) ;
 int readl (int ) ;

__attribute__((used)) static int get_tclk(void)
{
 int tclk;




 switch ((readl(SAMPLE_AT_RESET_HIGH) >> 6) & 7) {
 case 1:
  tclk = 166666667;
  break;
 case 3:
  tclk = 200000000;
  break;
 default:
  panic("unknown TCLK PLL setting: %.8x\n",
   readl(SAMPLE_AT_RESET_HIGH));
 }

 return tclk;
}
