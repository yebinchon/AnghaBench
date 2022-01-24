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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ *,int) ; 

void FUNC3(u32 sysfreq, u32 corefreq, u32 timebase, u32 brgfreq)
{
	void *node;

	FUNC0(corefreq, timebase, sysfreq);

	node = FUNC1("/soc/cpm");
	if (node)
		FUNC2(node, "clock-frequency", &sysfreq, 4);

	node = FUNC1("/soc/cpm/brg");
	if (node)
		FUNC2(node, "clock-frequency", &brgfreq, 4);
}