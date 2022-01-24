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

/* Variables and functions */
 scalar_t__ MAC_FLOW_CTRL ; 
 unsigned int MAC_FLOW_CTRL_ENABLE ; 
 unsigned int MAC_FLOW_CTRL_PT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned long ioaddr, unsigned int duplex,
			     unsigned int fc, unsigned int pause_time)
{
	unsigned int flow = MAC_FLOW_CTRL_ENABLE;

	if (duplex)
		flow |= (pause_time << MAC_FLOW_CTRL_PT_SHIFT);
	FUNC0(flow, ioaddr + MAC_FLOW_CTRL);

	return;
}