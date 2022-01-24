#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int opmode; } ;
struct airo_info {int /*<<< orphan*/  flags; TYPE_1__ config; } ;
typedef  int /*<<< orphan*/  cfgr ;
typedef  TYPE_1__ ConfigRid ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ADHOC ; 
 int /*<<< orphan*/  FLAG_COMMIT ; 
 int /*<<< orphan*/  FLAG_RESET ; 
 int MODE_CFG_MASK ; 
 int MODE_STA_IBSS ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  RID_CONFIG ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct airo_info *ai, int lock)
{
	ConfigRid cfgr;

	if (!FUNC4 (FLAG_COMMIT, &ai->flags))
		return SUCCESS;

	FUNC2 (FLAG_COMMIT, &ai->flags);
	FUNC2 (FLAG_RESET, &ai->flags);
	FUNC1(ai);
	cfgr = ai->config;

	if ((cfgr.opmode & MODE_CFG_MASK) == MODE_STA_IBSS)
		FUNC3(FLAG_ADHOC, &ai->flags);
	else
		FUNC2(FLAG_ADHOC, &ai->flags);

	return FUNC0( ai, RID_CONFIG, &cfgr, sizeof(cfgr), lock);
}