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
typedef  int u64 ;
typedef  int u32 ;
struct atbm_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_OSC_CLK ; 
 int /*<<< orphan*/  FUNC0 (struct atbm_state*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct atbm_state *priv, u32 freq /*in kHz*/)
{
	u32 val;
	u64 t;

	/* 0x100000 * freq / 30.4MHz */
	t = (u64)0x100000 * freq;
	FUNC1(t, 30400);
	val = t;

	FUNC0(priv, REG_OSC_CLK, val);
	FUNC0(priv, REG_OSC_CLK + 1, val >> 8);
	FUNC0(priv, REG_OSC_CLK + 2, val >> 16);

	return 0;
}