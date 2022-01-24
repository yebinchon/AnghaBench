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
struct TYPE_2__ {int uartclk; } ;
struct mpsc_port_info {int BRG_BCR_m; scalar_t__ brg_base; scalar_t__ mirror_regs; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ BRG_BCR ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mpsc_port_info *pi, u32 baud)
{
	u32	cdv = (pi->port.uartclk / (baud << 5)) - 1;
	u32	v;

	FUNC0(pi);
	v = (pi->mirror_regs) ? pi->BRG_BCR_m : FUNC2(pi->brg_base + BRG_BCR);
	v = (v & 0xffff0000) | (cdv & 0xffff);

	if (pi->mirror_regs)
		pi->BRG_BCR_m = v;
	FUNC3(v, pi->brg_base + BRG_BCR);
	FUNC1(pi);
}