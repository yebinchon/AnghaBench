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
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_6__ {int dcd_shreg; unsigned char last_sample; int dcd_sum0; scalar_t__ dcd_sum1; scalar_t__ dcd_sum2; int interm_sample; unsigned char last_rxbit; void* dcd_time; } ;
struct TYPE_5__ {int shreg; TYPE_3__ ser12; } ;
struct TYPE_4__ {int /*<<< orphan*/  cur_pllcorr; } ;
struct baycom_state {int opt_dcd; TYPE_2__ modem; int /*<<< orphan*/  hdrv; TYPE_1__ debug_vals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 

__attribute__((used)) static inline void FUNC9(struct net_device *dev, struct baycom_state *bc)
{
	unsigned char cur_s;
	/*
	 * do demodulator
	 */
	cur_s = FUNC6(FUNC1(dev->base_addr)) & 0x10;	/* the CTS line */
	FUNC3(&bc->hdrv, cur_s);
	bc->modem.ser12.dcd_shreg = (bc->modem.ser12.dcd_shreg << 1) |
		(cur_s != bc->modem.ser12.last_sample);
	bc->modem.ser12.last_sample = cur_s;
	if(bc->modem.ser12.dcd_shreg & 1) {
		if (!bc->opt_dcd) {
			unsigned int dcdspos, dcdsneg;

			dcdspos = dcdsneg = 0;
			dcdspos += ((bc->modem.ser12.dcd_shreg >> 1) & 1);
			if (!(bc->modem.ser12.dcd_shreg & 0x7ffffffe))
				dcdspos += 2;
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 2) & 1);
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 3) & 1);
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 4) & 1);

			bc->modem.ser12.dcd_sum0 += 16*dcdspos - dcdsneg;
		} else
			bc->modem.ser12.dcd_sum0--;
	}
	if(!bc->modem.ser12.dcd_time) {
		FUNC5(&bc->hdrv, (bc->modem.ser12.dcd_sum0 +
					   bc->modem.ser12.dcd_sum1 +
					   bc->modem.ser12.dcd_sum2) < 0);
		bc->modem.ser12.dcd_sum2 = bc->modem.ser12.dcd_sum1;
		bc->modem.ser12.dcd_sum1 = bc->modem.ser12.dcd_sum0;
		/* offset to ensure DCD off on silent input */
		bc->modem.ser12.dcd_sum0 = 2;
		bc->modem.ser12.dcd_time = FUNC2(bc);
	}
	bc->modem.ser12.dcd_time--;
	if (!bc->opt_dcd) {
		/*
		 * PLL code for the improved software DCD algorithm
		 */
		if (bc->modem.ser12.interm_sample) {
			/*
			 * intermediate sample; set timing correction to normal
			 */
			FUNC8(dev, 4);
		} else {
			/*
			 * do PLL correction and call HDLC receiver
			 */
			switch (bc->modem.ser12.dcd_shreg & 7) {
			case 1: /* transition too late */
				FUNC8(dev, 5);
#ifdef BAYCOM_DEBUG
				bc->debug_vals.cur_pllcorr++;
#endif /* BAYCOM_DEBUG */
				break;
			case 4:	/* transition too early */
				FUNC8(dev, 3);
#ifdef BAYCOM_DEBUG
				bc->debug_vals.cur_pllcorr--;
#endif /* BAYCOM_DEBUG */
				break;
			default:
				FUNC8(dev, 4);
				break;
			}
			bc->modem.shreg >>= 1;
			if (bc->modem.ser12.last_sample ==
			    bc->modem.ser12.last_rxbit)
				bc->modem.shreg |= 0x10000;
			bc->modem.ser12.last_rxbit =
				bc->modem.ser12.last_sample;
		}
		if (++bc->modem.ser12.interm_sample >= 3)
			bc->modem.ser12.interm_sample = 0;
		/*
		 * DCD stuff
		 */
		if (bc->modem.ser12.dcd_shreg & 1) {
			unsigned int dcdspos, dcdsneg;

			dcdspos = dcdsneg = 0;
			dcdspos += ((bc->modem.ser12.dcd_shreg >> 1) & 1);
			dcdspos += (!(bc->modem.ser12.dcd_shreg & 0x7ffffffe))
				<< 1;
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 2) & 1);
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 3) & 1);
			dcdsneg += ((bc->modem.ser12.dcd_shreg >> 4) & 1);

			bc->modem.ser12.dcd_sum0 += 16*dcdspos - dcdsneg;
		}
	} else {
		/*
		 * PLL algorithm for the hardware squelch DCD algorithm
		 */
		if (bc->modem.ser12.interm_sample) {
			/*
			 * intermediate sample; set timing correction to normal
			 */
			FUNC8(dev, 6);
		} else {
			/*
			 * do PLL correction and call HDLC receiver
			 */
			switch (bc->modem.ser12.dcd_shreg & 3) {
			case 1: /* transition too late */
				FUNC8(dev, 7);
#ifdef BAYCOM_DEBUG
				bc->debug_vals.cur_pllcorr++;
#endif /* BAYCOM_DEBUG */
				break;
			case 2:	/* transition too early */
				FUNC8(dev, 5);
#ifdef BAYCOM_DEBUG
				bc->debug_vals.cur_pllcorr--;
#endif /* BAYCOM_DEBUG */
				break;
			default:
				FUNC8(dev, 6);
				break;
			}
			bc->modem.shreg >>= 1;
			if (bc->modem.ser12.last_sample ==
			    bc->modem.ser12.last_rxbit)
				bc->modem.shreg |= 0x10000;
			bc->modem.ser12.last_rxbit =
				bc->modem.ser12.last_sample;
		}
		bc->modem.ser12.interm_sample = !bc->modem.ser12.interm_sample;
		/*
		 * DCD stuff
		 */
		bc->modem.ser12.dcd_sum0 -= (bc->modem.ser12.dcd_shreg & 1);
	}
	FUNC7(0x0d, FUNC0(dev->base_addr));		/* transmitter off */
	if (bc->modem.shreg & 1) {
		FUNC4(&bc->hdrv, bc->modem.shreg >> 1);
		bc->modem.shreg = 0x10000;
	}
	if(!bc->modem.ser12.dcd_time) {
		if (bc->opt_dcd & 1) 
			FUNC5(&bc->hdrv, !((FUNC6(FUNC1(dev->base_addr)) ^ bc->opt_dcd) & 0x80));
		else
			FUNC5(&bc->hdrv, (bc->modem.ser12.dcd_sum0 +
						   bc->modem.ser12.dcd_sum1 +
						   bc->modem.ser12.dcd_sum2) < 0);
		bc->modem.ser12.dcd_sum2 = bc->modem.ser12.dcd_sum1;
		bc->modem.ser12.dcd_sum1 = bc->modem.ser12.dcd_sum0;
		/* offset to ensure DCD off on silent input */
		bc->modem.ser12.dcd_sum0 = 2;
		bc->modem.ser12.dcd_time = FUNC2(bc);
	}
	bc->modem.ser12.dcd_time--;
}