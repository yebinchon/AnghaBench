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
struct zfcp_unit {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,struct zfcp_unit*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_unit *unit)
{
	if (FUNC1(ZFCP_STATUS_COMMON_UNBLOCKED, &unit->status))
		FUNC2("eruubl1", NULL, unit);
	FUNC0(ZFCP_STATUS_COMMON_UNBLOCKED, &unit->status);
}