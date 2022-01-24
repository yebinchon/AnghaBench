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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int DUMP_MAX_PRESETS ; 
 scalar_t__ FUNC0 (struct bnx2x*,int) ; 

__attribute__((used)) static int FUNC1(struct bnx2x *bp)
{
	u32 preset_idx;
	int regdump_len = 0;

	/* Calculate the total preset regs length */
	for (preset_idx = 1; preset_idx <= DUMP_MAX_PRESETS; preset_idx++)
		regdump_len += FUNC0(bp, preset_idx);

	return regdump_len;
}