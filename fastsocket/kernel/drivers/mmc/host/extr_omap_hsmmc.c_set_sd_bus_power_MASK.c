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
struct omap_hsmmc_host {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SDBP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long loops_per_jiffy ; 

__attribute__((used)) static void FUNC3(struct omap_hsmmc_host *host)
{
	unsigned long i;

	FUNC1(host->base, HCTL,
			 FUNC0(host->base, HCTL) | SDBP);
	for (i = 0; i < loops_per_jiffy; i++) {
		if (FUNC0(host->base, HCTL) & SDBP)
			break;
		FUNC2();
	}
}