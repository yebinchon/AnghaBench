#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_TM_PIO_ADDR ; 
 int /*<<< orphan*/  A_TP_TM_PIO_DATA ; 
 unsigned int A_TP_TX_MOD_Q1_Q0_RATE_LIMIT ; 
 int EINVAL ; 
 unsigned int FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct adapter *adap, unsigned int kbps, int sched)
{
	unsigned int v, tps, cpt, bpt, delta, mindelta = ~0;
	unsigned int clk = adap->params.vpd.cclk * 1000;
	unsigned int selected_cpt = 0, selected_bpt = 0;

	if (kbps > 0) {
		kbps *= 125;	/* -> bytes */
		for (cpt = 1; cpt <= 255; cpt++) {
			tps = clk / cpt;
			bpt = (kbps + tps / 2) / tps;
			if (bpt > 0 && bpt <= 255) {
				v = bpt * tps;
				delta = v >= kbps ? v - kbps : kbps - v;
				if (delta <= mindelta) {
					mindelta = delta;
					selected_cpt = cpt;
					selected_bpt = bpt;
				}
			} else if (selected_cpt)
				break;
		}
		if (!selected_cpt)
			return -EINVAL;
	}
	FUNC1(adap, A_TP_TM_PIO_ADDR,
		     A_TP_TX_MOD_Q1_Q0_RATE_LIMIT - sched / 2);
	v = FUNC0(adap, A_TP_TM_PIO_DATA);
	if (sched & 1)
		v = (v & 0xffff) | (selected_cpt << 16) | (selected_bpt << 24);
	else
		v = (v & 0xffff0000) | selected_cpt | (selected_bpt << 8);
	FUNC1(adap, A_TP_TM_PIO_DATA, v);
	return 0;
}