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
struct stlport {int /*<<< orphan*/  istate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct stlport*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct stlport *portp)
{
	FUNC0("stl_cd1400datastate(portp=%p)\n", portp);

	if (portp == NULL)
		return 0;

	return FUNC1(ASYI_TXBUSY, &portp->istate) ? 1 : 0;
}