
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; } ;


 double FREQ_MUL ;
 size_t READCHAN ;
 unsigned short READCHAN_READCHAN ;
 size_t SYSCONFIG2 ;
 int SYSCONFIG2_BAND ;
 int SYSCONFIG2_SPACE ;
 int si470x_get_register (struct si470x_device*,size_t) ;

__attribute__((used)) static int si470x_get_freq(struct si470x_device *radio, unsigned int *freq)
{
 unsigned int spacing, band_bottom;
 unsigned short chan;
 int retval;


 switch ((radio->registers[SYSCONFIG2] & SYSCONFIG2_SPACE) >> 4) {

 case 0:
  spacing = 0.200 * FREQ_MUL; break;

 case 1:
  spacing = 0.100 * FREQ_MUL; break;

 default:
  spacing = 0.050 * FREQ_MUL; break;
 };


 switch ((radio->registers[SYSCONFIG2] & SYSCONFIG2_BAND) >> 6) {

 case 0:
  band_bottom = 87.5 * FREQ_MUL; break;

 default:
  band_bottom = 76 * FREQ_MUL; break;

 case 2:
  band_bottom = 76 * FREQ_MUL; break;
 };


 retval = si470x_get_register(radio, READCHAN);
 chan = radio->registers[READCHAN] & READCHAN_READCHAN;


 *freq = chan * spacing + band_bottom;

 return retval;
}
