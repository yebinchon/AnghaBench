
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 scalar_t__ abs (int) ;
 unsigned int max_duration ;
 unsigned int stock_freq ;

__attribute__((used)) static unsigned int gx_validate_speed(unsigned int khz, u8 *on_duration,
  u8 *off_duration)
{
 unsigned int i;
 u8 tmp_on, tmp_off;
 int old_tmp_freq = stock_freq;
 int tmp_freq;

 *off_duration = 1;
 *on_duration = 0;

 for (i = max_duration; i > 0; i--) {
  tmp_off = ((khz * i) / stock_freq) & 0xff;
  tmp_on = i - tmp_off;
  tmp_freq = (stock_freq * tmp_off) / i;


  if (abs(tmp_freq - khz) <= abs(old_tmp_freq - khz)) {
   *on_duration = tmp_on;
   *off_duration = tmp_off;
   old_tmp_freq = tmp_freq;
  }
 }

 return old_tmp_freq;
}
