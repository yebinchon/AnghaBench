
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int REQUEST_SET_CLOCK ;
 int dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;

__attribute__((used)) static int dib0700_set_clock(struct dvb_usb_device *d, u8 en_pll,
 u8 pll_src, u8 pll_range, u8 clock_gpio3, u16 pll_prediv,
 u16 pll_loopdiv, u16 free_div, u16 dsuScaler)
{
 u8 b[10];
 b[0] = REQUEST_SET_CLOCK;
 b[1] = (en_pll << 7) | (pll_src << 6) | (pll_range << 5) | (clock_gpio3 << 4);
 b[2] = (pll_prediv >> 8) & 0xff;
 b[3] = pll_prediv & 0xff;
 b[4] = (pll_loopdiv >> 8) & 0xff;
 b[5] = pll_loopdiv & 0xff;
 b[6] = (free_div >> 8) & 0xff;
 b[7] = free_div & 0xff;
 b[8] = (dsuScaler >> 8) & 0xff;
 b[9] = dsuScaler & 0xff;

 return dib0700_ctrl_wr(d, b, 10);
}
