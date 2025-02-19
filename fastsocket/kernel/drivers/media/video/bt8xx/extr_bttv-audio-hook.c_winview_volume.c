
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;
typedef int __u16 ;


 int PT2254_DBS_IN_10 ;
 int PT2254_DBS_IN_2 ;
 int PT2254_L_CHANNEL ;
 int PT2254_R_CHANNEL ;
 int WINVIEW_PT2254_CLK ;
 int WINVIEW_PT2254_DATA ;
 int WINVIEW_PT2254_STROBE ;
 int gpio_read () ;
 int gpio_write (int) ;
 int udelay (int) ;

void winview_volume(struct bttv *btv, __u16 volume)
{

 int bits_out, loops, vol, data;


 vol = 32 - ((volume>>11));

 bits_out = (PT2254_DBS_IN_2>>(vol%5));

 bits_out |= (PT2254_DBS_IN_10>>(vol/5));
 bits_out |= PT2254_L_CHANNEL | PT2254_R_CHANNEL;
 data = gpio_read();
 data &= ~(WINVIEW_PT2254_CLK| WINVIEW_PT2254_DATA|
    WINVIEW_PT2254_STROBE);
 for (loops = 17; loops >= 0 ; loops--) {
  if (bits_out & (1<<loops))
   data |= WINVIEW_PT2254_DATA;
  else
   data &= ~WINVIEW_PT2254_DATA;
  gpio_write(data);
  udelay(5);
  data |= WINVIEW_PT2254_CLK;
  gpio_write(data);
  udelay(5);
  data &= ~WINVIEW_PT2254_CLK;
  gpio_write(data);
 }
 data |= WINVIEW_PT2254_STROBE;
 data &= ~WINVIEW_PT2254_DATA;
 gpio_write(data);
 udelay(10);
 data &= ~WINVIEW_PT2254_STROBE;
 gpio_write(data);
}
