
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rt2x00_dev {int dummy; } ;


 int BBP4_BANDWIDTH ;
 int RFCSR22_BASEBAND_LOOPBACK ;
 int RFCSR31_RX_H20M ;
 int msleep (int) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int,scalar_t__*) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int,scalar_t__*) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,scalar_t__) ;
 int rt2x00_set_field8 (scalar_t__*,int ,int) ;

__attribute__((used)) static u8 rt2800_init_rx_filter(struct rt2x00_dev *rt2x00dev, bool bw40,
    u8 filter_target)
{
 unsigned int i;
 u8 bbp;
 u8 rfcsr;
 u8 passband;
 u8 stopband;
 u8 overtuned = 0;
 u8 rfcsr24 = (bw40) ? 0x27 : 0x07;

 rt2800_rfcsr_write(rt2x00dev, 24, rfcsr24);

 rt2800_bbp_read(rt2x00dev, 4, &bbp);
 rt2x00_set_field8(&bbp, BBP4_BANDWIDTH, 2 * bw40);
 rt2800_bbp_write(rt2x00dev, 4, bbp);

 rt2800_rfcsr_read(rt2x00dev, 31, &rfcsr);
 rt2x00_set_field8(&rfcsr, RFCSR31_RX_H20M, bw40);
 rt2800_rfcsr_write(rt2x00dev, 31, rfcsr);

 rt2800_rfcsr_read(rt2x00dev, 22, &rfcsr);
 rt2x00_set_field8(&rfcsr, RFCSR22_BASEBAND_LOOPBACK, 1);
 rt2800_rfcsr_write(rt2x00dev, 22, rfcsr);




 rt2800_bbp_write(rt2x00dev, 24, 0);

 for (i = 0; i < 100; i++) {
  rt2800_bbp_write(rt2x00dev, 25, 0x90);
  msleep(1);

  rt2800_bbp_read(rt2x00dev, 55, &passband);
  if (passband)
   break;
 }




 rt2800_bbp_write(rt2x00dev, 24, 0x06);

 for (i = 0; i < 100; i++) {
  rt2800_bbp_write(rt2x00dev, 25, 0x90);
  msleep(1);

  rt2800_bbp_read(rt2x00dev, 55, &stopband);

  if ((passband - stopband) <= filter_target) {
   rfcsr24++;
   overtuned += ((passband - stopband) == filter_target);
  } else
   break;

  rt2800_rfcsr_write(rt2x00dev, 24, rfcsr24);
 }

 rfcsr24 -= !!overtuned;

 rt2800_rfcsr_write(rt2x00dev, 24, rfcsr24);
 return rfcsr24;
}
