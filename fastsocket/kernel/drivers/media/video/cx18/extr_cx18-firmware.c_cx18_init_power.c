
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int CX18_ADEC_CONTROL ;
 int CX18_CLOCK_ENABLE1 ;
 int CX18_CLOCK_ENABLE2 ;
 int CX18_CLOCK_SELECT1 ;
 int CX18_CLOCK_SELECT2 ;
 int CX18_FAST_CLOCK_PLL_ADJUST_BANDWIDTH ;
 int CX18_FAST_CLOCK_PLL_FRAC ;
 int CX18_FAST_CLOCK_PLL_INT ;
 int CX18_FAST_CLOCK_PLL_POST ;
 int CX18_FAST_CLOCK_PLL_PRESCALE ;
 int CX18_HALF_CLOCK_SELECT1 ;
 int CX18_HALF_CLOCK_SELECT2 ;
 int CX18_MPEG_CLOCK_PLL_FRAC ;
 int CX18_MPEG_CLOCK_PLL_INT ;
 int CX18_MPEG_CLOCK_PLL_POST ;
 int CX18_PLL_POWER_DOWN ;
 int CX18_SLOW_CLOCK_PLL_FRAC ;
 int CX18_SLOW_CLOCK_PLL_INT ;
 int CX18_SLOW_CLOCK_PLL_POST ;
 int cx18_write_reg (struct cx18*,int,int ) ;
 int cx18_write_reg_expect (struct cx18*,int,int ,int,int) ;

void cx18_init_power(struct cx18 *cx, int lowpwr)
{


 cx18_write_reg(cx, 0x00000008, CX18_PLL_POWER_DOWN);


 cx18_write_reg_expect(cx, 0x00020000, CX18_ADEC_CONTROL,
      0x00000000, 0x00020002);
 cx18_write_reg(cx, lowpwr ? 0xD : 0x11, CX18_FAST_CLOCK_PLL_INT);
 cx18_write_reg(cx, lowpwr ? 0x1EFBF37 : 0x038E3D7,
      CX18_FAST_CLOCK_PLL_FRAC);

 cx18_write_reg(cx, 2, CX18_FAST_CLOCK_PLL_POST);
 cx18_write_reg(cx, 1, CX18_FAST_CLOCK_PLL_PRESCALE);
 cx18_write_reg(cx, 4, CX18_FAST_CLOCK_PLL_ADJUST_BANDWIDTH);




 cx18_write_reg(cx, lowpwr ? 0xD : 0xC, CX18_SLOW_CLOCK_PLL_INT);
 cx18_write_reg(cx, lowpwr ? 0x30C344 : 0x124927F,
      CX18_SLOW_CLOCK_PLL_FRAC);
 cx18_write_reg(cx, 3, CX18_SLOW_CLOCK_PLL_POST);



 cx18_write_reg(cx, 0xF, CX18_MPEG_CLOCK_PLL_INT);
 cx18_write_reg(cx, 0x2BE2FE, CX18_MPEG_CLOCK_PLL_FRAC);
 cx18_write_reg(cx, 8, CX18_MPEG_CLOCK_PLL_POST);
 if (lowpwr) {
  cx18_write_reg_expect(cx, 0xFFFF0020, CX18_CLOCK_SELECT1,
       0x00000020, 0xFFFFFFFF);
  cx18_write_reg_expect(cx, 0xFFFF0004, CX18_CLOCK_SELECT2,
       0x00000004, 0xFFFFFFFF);
 } else {

  cx18_write_reg_expect(cx, 0x00060004, CX18_CLOCK_SELECT1,
       0x00000004, 0x00060006);
  cx18_write_reg_expect(cx, 0x00060006, CX18_CLOCK_SELECT2,
       0x00000006, 0x00060006);
 }

 cx18_write_reg_expect(cx, 0xFFFF0002, CX18_HALF_CLOCK_SELECT1,
      0x00000002, 0xFFFFFFFF);
 cx18_write_reg_expect(cx, 0xFFFF0104, CX18_HALF_CLOCK_SELECT2,
      0x00000104, 0xFFFFFFFF);
 cx18_write_reg_expect(cx, 0xFFFF9026, CX18_CLOCK_ENABLE1,
      0x00009026, 0xFFFFFFFF);
 cx18_write_reg_expect(cx, 0xFFFF3105, CX18_CLOCK_ENABLE2,
      0x00003105, 0xFFFFFFFF);
}
