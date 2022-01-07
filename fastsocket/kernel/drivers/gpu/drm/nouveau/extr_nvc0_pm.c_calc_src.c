
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int calc_div (struct drm_device*,int,int,int,int*) ;
 int read_vco (struct drm_device*,int) ;

__attribute__((used)) static u32
calc_src(struct drm_device *dev, int clk, u32 freq, u32 *dsrc, u32 *ddiv)
{
 u32 sclk;


 *ddiv = 0x00000000;
 switch (freq) {
 case 27000:
 case 108000:
  *dsrc = 0x00000000;
  if (freq == 108000)
   *dsrc |= 0x00030000;
  return freq;
 case 100000:
  *dsrc = 0x00000002;
  return freq;
 default:
  *dsrc = 0x00000003;
  break;
 }


 sclk = read_vco(dev, clk);
 if (clk < 7)
  sclk = calc_div(dev, clk, sclk, freq, ddiv);
 return sclk;
}
