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
struct pps_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pps_device*) ; 

void FUNC1(struct pps_device *pps)
{
	FUNC0(pps);

	/* don't have to kfree(pps) here because it will be done on
	 * device destruction */
}