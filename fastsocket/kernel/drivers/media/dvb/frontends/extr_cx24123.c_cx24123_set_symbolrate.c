
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int symbol_rate_max; int symbol_rate_min; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct cx24123_state {TYPE_3__ frontend; } ;


 int EOPNOTSUPP ;
 int XTAL ;
 int cx24123_int_log2 (int,int) ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*,int,int,int,int) ;

__attribute__((used)) static int cx24123_set_symbolrate(struct cx24123_state *state, u32 srate)
{
 u32 tmp, sample_rate, ratio, sample_gain;
 u8 pll_mult;


 if ((srate > state->frontend.ops.info.symbol_rate_max) ||
     (srate < state->frontend.ops.info.symbol_rate_min))
  return -EOPNOTSUPP;



 if (srate < (XTAL*2)/2)
  pll_mult = 2;
 else if (srate < (XTAL*3)/2)
  pll_mult = 3;
 else if (srate < (XTAL*4)/2)
  pll_mult = 4;
 else if (srate < (XTAL*5)/2)
  pll_mult = 5;
 else if (srate < (XTAL*6)/2)
  pll_mult = 6;
 else if (srate < (XTAL*7)/2)
  pll_mult = 7;
 else if (srate < (XTAL*8)/2)
  pll_mult = 8;
 else
  pll_mult = 9;


 sample_rate = pll_mult * XTAL;
 tmp = srate << 6;
 ratio = tmp / sample_rate;

 tmp = (tmp % sample_rate) << 6;
 ratio = (ratio << 6) + (tmp / sample_rate);

 tmp = (tmp % sample_rate) << 6;
 ratio = (ratio << 6) + (tmp / sample_rate);

 tmp = (tmp % sample_rate) << 5;
 ratio = (ratio << 5) + (tmp / sample_rate);


 cx24123_writereg(state, 0x01, pll_mult * 6);

 cx24123_writereg(state, 0x08, (ratio >> 16) & 0x3f);
 cx24123_writereg(state, 0x09, (ratio >> 8) & 0xff);
 cx24123_writereg(state, 0x0a, ratio & 0xff);


 sample_gain = cx24123_int_log2(sample_rate, srate);
 tmp = cx24123_readreg(state, 0x0c) & ~0xe0;
 cx24123_writereg(state, 0x0c, tmp | sample_gain << 5);

 dprintk("srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\n",
  srate, ratio, sample_rate, sample_gain);

 return 0;
}
