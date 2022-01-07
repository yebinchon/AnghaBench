
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_TRICKLECHARGER ;
 int ds1302_wdisable () ;
 int ds1302_wenable () ;
 int out_byte (unsigned char) ;
 int start () ;
 int stop () ;

void
ds1302_writereg(int reg, unsigned char val)
{

 int do_writereg = 1;







 if (do_writereg) {
  ds1302_wenable();
  start();
  out_byte(0x80 | (reg << 1));
  out_byte(val);
  stop();
  ds1302_wdisable();
 }
}
