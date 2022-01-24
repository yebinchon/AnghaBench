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
struct ks8842_adapter {scalar_t__ hw_addr; } ;

/* Variables and functions */
 scalar_t__ REG_SELECT_BANK ; 
 scalar_t__ REG_TIMB_RST ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ks8842_adapter *adapter)
{
	/* The KS8842 goes haywire when doing softare reset
	 * a work around in the timberdale IP is implemented to
	 * do a hardware reset instead
	ks8842_write16(adapter, 3, 1, REG_GRR);
	msleep(10);
	iowrite16(0, adapter->hw_addr + REG_GRR);
	*/
	FUNC0(32, adapter->hw_addr + REG_SELECT_BANK);
	FUNC1(0x1, adapter->hw_addr + REG_TIMB_RST);
	FUNC2(20);
}