#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int symbol_rate_max; int symbol_rate_min; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct cx24123_state {TYPE_3__ frontend; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int XTAL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct cx24123_state *state, u32 srate)
{
	u32 tmp, sample_rate, ratio, sample_gain;
	u8 pll_mult;

	/*  check if symbol rate is within limits */
	if ((srate > state->frontend.ops.info.symbol_rate_max) ||
	    (srate < state->frontend.ops.info.symbol_rate_min))
		return -EOPNOTSUPP;

	/* choose the sampling rate high enough for the required operation,
	   while optimizing the power consumed by the demodulator */
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

	/*
	    SYSSymbolRate[21:0] = (srate << 23) / sample_rate

	    We have to use 32 bit unsigned arithmetic without precision loss.
	    The maximum srate is 45000000 or 0x02AEA540. This number has
	    only 6 clear bits on top, hence we can shift it left only 6 bits
	    at a time. Borrowed from cx24110.c
	*/

	tmp = srate << 6;
	ratio = tmp / sample_rate;

	tmp = (tmp % sample_rate) << 6;
	ratio = (ratio << 6) + (tmp / sample_rate);

	tmp = (tmp % sample_rate) << 6;
	ratio = (ratio << 6) + (tmp / sample_rate);

	tmp = (tmp % sample_rate) << 5;
	ratio = (ratio << 5) + (tmp / sample_rate);


	FUNC2(state, 0x01, pll_mult * 6);

	FUNC2(state, 0x08, (ratio >> 16) & 0x3f);
	FUNC2(state, 0x09, (ratio >> 8) & 0xff);
	FUNC2(state, 0x0a, ratio & 0xff);

	/* also set the demodulator sample gain */
	sample_gain = FUNC0(sample_rate, srate);
	tmp = FUNC1(state, 0x0c) & ~0xe0;
	FUNC2(state, 0x0c, tmp | sample_gain << 5);

	FUNC3("srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\n",
		srate, ratio, sample_rate, sample_gain);

	return 0;
}