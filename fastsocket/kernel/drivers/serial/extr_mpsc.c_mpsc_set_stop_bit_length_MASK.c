#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int MPSC_MPCR_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ MPSC_MPCR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mpsc_port_info *pi, u32 len)
{
	u32	v;

	FUNC0("mpsc_set_stop_bit_length[%d]: stop bits: %d\n",
		pi->port.line, len);

	v = (pi->mirror_regs) ? pi->MPSC_MPCR_m :
		FUNC1(pi->mpsc_base + MPSC_MPCR);

	v = (v & ~(1 << 14)) | ((len & 0x1) << 14);

	if (pi->mirror_regs)
		pi->MPSC_MPCR_m = v;
	FUNC2(v, pi->mpsc_base + MPSC_MPCR);
}