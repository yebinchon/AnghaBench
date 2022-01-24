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
typedef  int u16 ;
struct net_device {scalar_t__ base_addr; } ;
struct i596_private {int options; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int OPT_SWAP_PORT ; 
 scalar_t__ PA_CPU_PORT_L_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct i596_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int c, dma_addr_t x)
{
	struct i596_private *lp = FUNC1(dev);

	u32 v = (u32) (c) | (u32) (x);
	u16 a, b;

	if (lp->options & OPT_SWAP_PORT) {
		a = v >> 16;
		b = v & 0xffff;
	} else {
		a = v & 0xffff;
		b = v >> 16;
	}

	FUNC0(a, dev->base_addr + PA_CPU_PORT_L_ACCESS);
	FUNC2(1);
	FUNC0(b, dev->base_addr + PA_CPU_PORT_L_ACCESS);
}