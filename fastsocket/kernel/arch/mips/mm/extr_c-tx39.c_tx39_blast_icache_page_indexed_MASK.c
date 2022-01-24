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
 unsigned long TX39_CONF_ICE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static inline void FUNC6(unsigned long addr)
{
	unsigned long flags, config;
	/* disable icache (set ICE#) */
	FUNC3(flags);
	config = FUNC4();
	FUNC5(config & ~TX39_CONF_ICE);
	FUNC0();
	FUNC1(addr);
	FUNC5(config);
	FUNC2(flags);
}