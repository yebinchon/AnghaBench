#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mpsc_port_info {int BRG_BCR_m; scalar_t__ brg_base; scalar_t__ mirror_regs; } ;

/* Variables and functions */
 scalar_t__ BRG_BCR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mpsc_port_info *pi)
{
	u32	v;

	v = (pi->mirror_regs) ? pi->BRG_BCR_m : FUNC0(pi->brg_base + BRG_BCR);
	v |= (1 << 16);

	if (pi->mirror_regs)
		pi->BRG_BCR_m = v;
	FUNC1(v, pi->brg_base + BRG_BCR);
}