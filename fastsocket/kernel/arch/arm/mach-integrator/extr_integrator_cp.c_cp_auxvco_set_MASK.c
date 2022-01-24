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
struct icst525_vco {int v; int r; int s; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_AUXOSC ; 
 int /*<<< orphan*/  CM_LOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk *clk, struct icst525_vco vco)
{
	u32 val;

	val = FUNC0(CM_AUXOSC) & ~0x7ffff;
	val |= vco.v | (vco.r << 9) | (vco.s << 16);

	FUNC1(0xa05f, CM_LOCK);
	FUNC1(val, CM_AUXOSC);
	FUNC1(0, CM_LOCK);
}