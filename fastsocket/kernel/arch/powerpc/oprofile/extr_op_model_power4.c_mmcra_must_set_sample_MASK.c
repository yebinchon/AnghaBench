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
 int /*<<< orphan*/  PV_970 ; 
 int /*<<< orphan*/  PV_970FX ; 
 int /*<<< orphan*/  PV_970GX ; 
 int /*<<< orphan*/  PV_970MP ; 
 int /*<<< orphan*/  PV_POWER4 ; 
 int /*<<< orphan*/  PV_POWER4p ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	if (FUNC0(PV_POWER4) || FUNC0(PV_POWER4p) ||
	    FUNC0(PV_970) || FUNC0(PV_970FX) ||
	    FUNC0(PV_970MP) || FUNC0(PV_970GX))
		return 1;

	return 0;
}