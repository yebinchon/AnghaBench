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
struct rio_info {int dummy; } ;
struct Host {int /*<<< orphan*/  HostLock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_info*,struct Host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_info*) ; 
 int /*<<< orphan*/  RIO_DEBUG_ROUTE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct rio_info *p, struct Host *HostP, unsigned int UnitId)
{
	unsigned long flags;
	FUNC4(&HostP->HostLock, flags);

	if (FUNC0(HostP, UnitId)) {
		FUNC3(RIO_DEBUG_ROUTE, "Unit %d is NOT isolated\n", UnitId);
		FUNC5(&HostP->HostLock, flags);
		return (0);
	}

	FUNC1(p, HostP, UnitId);
	FUNC2(p);
	FUNC5(&HostP->HostLock, flags);
	return 1;
}