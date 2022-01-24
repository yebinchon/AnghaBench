#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long linesz; } ;
struct TYPE_4__ {unsigned long linesz; } ;
struct TYPE_6__ {TYPE_2__ dcache; TYPE_1__ icache; } ;

/* Variables and functions */
 unsigned long TX39_CONF_ICE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long addr)
{
	unsigned long ic_lsize = current_cpu_data.icache.linesz;
	unsigned long dc_lsize = current_cpu_data.dcache.linesz;
	unsigned long config;
	unsigned long flags;

	FUNC4(addr & ~(dc_lsize - 1));

	/* disable icache (set ICE#) */
	FUNC2(flags);
	config = FUNC5();
	FUNC6(config & ~TX39_CONF_ICE);
	FUNC0();
	FUNC3(addr & ~(ic_lsize - 1));
	FUNC6(config);
	FUNC1(flags);
}