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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int mpsc_max_idle; scalar_t__ mpsc_base; scalar_t__ MPSC_CHR_2_m; scalar_t__ MPSC_CHR_1_m; scalar_t__ mirror_regs; int /*<<< orphan*/  default_baud; TYPE_2__* shared_regs; TYPE_1__ port; } ;
struct TYPE_4__ {int MPSC_MRR_m; int MPSC_RCRR_m; int MPSC_TCRR_m; scalar_t__ mpsc_routing_base; } ;

/* Variables and functions */
 scalar_t__ MPSC_CHR_1 ; 
 scalar_t__ MPSC_CHR_10 ; 
 scalar_t__ MPSC_CHR_2 ; 
 scalar_t__ MPSC_CHR_3 ; 
 scalar_t__ MPSC_CHR_4 ; 
 scalar_t__ MPSC_CHR_5 ; 
 scalar_t__ MPSC_CHR_6 ; 
 scalar_t__ MPSC_CHR_7 ; 
 scalar_t__ MPSC_CHR_8 ; 
 scalar_t__ MPSC_CHR_9 ; 
 scalar_t__ MPSC_MMCRH ; 
 scalar_t__ MPSC_MMCRL ; 
 scalar_t__ MPSC_MRR ; 
 scalar_t__ MPSC_RCRR ; 
 scalar_t__ MPSC_TCRR ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mpsc_port_info *pi)
{
	u32	v;

	FUNC1("mpsc_hw_init[%d]: Initializing hardware\n", pi->port.line);

	/* Set up clock routing */
	if (pi->mirror_regs) {
		v = pi->shared_regs->MPSC_MRR_m;
		v &= ~0x1c7;
		pi->shared_regs->MPSC_MRR_m = v;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_MRR);

		v = pi->shared_regs->MPSC_RCRR_m;
		v = (v & ~0xf0f) | 0x100;
		pi->shared_regs->MPSC_RCRR_m = v;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_RCRR);

		v = pi->shared_regs->MPSC_TCRR_m;
		v = (v & ~0xf0f) | 0x100;
		pi->shared_regs->MPSC_TCRR_m = v;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
	} else {
		v = FUNC2(pi->shared_regs->mpsc_routing_base + MPSC_MRR);
		v &= ~0x1c7;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_MRR);

		v = FUNC2(pi->shared_regs->mpsc_routing_base + MPSC_RCRR);
		v = (v & ~0xf0f) | 0x100;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_RCRR);

		v = FUNC2(pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
		v = (v & ~0xf0f) | 0x100;
		FUNC3(v, pi->shared_regs->mpsc_routing_base + MPSC_TCRR);
	}

	/* Put MPSC in UART mode & enabel Tx/Rx egines */
	FUNC3(0x000004c4, pi->mpsc_base + MPSC_MMCRL);

	/* No preamble, 16x divider, low-latency, */
	FUNC3(0x04400400, pi->mpsc_base + MPSC_MMCRH);
	FUNC0(pi, pi->default_baud);

	if (pi->mirror_regs) {
		pi->MPSC_CHR_1_m = 0;
		pi->MPSC_CHR_2_m = 0;
	}
	FUNC3(0, pi->mpsc_base + MPSC_CHR_1);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_2);
	FUNC3(pi->mpsc_max_idle, pi->mpsc_base + MPSC_CHR_3);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_4);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_5);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_6);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_7);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_8);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_9);
	FUNC3(0, pi->mpsc_base + MPSC_CHR_10);
}