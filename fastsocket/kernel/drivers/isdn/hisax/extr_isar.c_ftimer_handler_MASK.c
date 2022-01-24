#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct BCState {int /*<<< orphan*/  Flag; TYPE_1__* cs; } ;
struct TYPE_2__ {scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_FTI_FTS ; 
 int /*<<< orphan*/  BC_FLG_FTI_RUN ; 
 int /*<<< orphan*/  BC_FLG_LL_CONN ; 
 int /*<<< orphan*/  B_LL_CONNECT ; 
 int /*<<< orphan*/  B_LL_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct BCState*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct BCState *bcs) {
	if (bcs->cs->debug)
		FUNC0(bcs->cs, "ftimer flags %04x",
			bcs->Flag);
	FUNC2(BC_FLG_FTI_RUN, &bcs->Flag);
	if (FUNC2(BC_FLG_LL_CONN, &bcs->Flag)) {
		FUNC1(bcs, B_LL_CONNECT);
	}
	if (FUNC2(BC_FLG_FTI_FTS, &bcs->Flag)) {
		FUNC1(bcs, B_LL_OK);
	}
}