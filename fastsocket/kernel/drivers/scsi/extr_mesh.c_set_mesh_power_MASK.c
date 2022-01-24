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
struct mesh_state {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_MESH_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  powermac ; 

__attribute__((used)) static void FUNC4(struct mesh_state *ms, int state)
{
	if (!FUNC0(powermac))
		return;
	if (state) {
		FUNC3(PMAC_FTR_MESH_ENABLE, FUNC1(ms->mdev), 0, 1);
		FUNC2(200);
	} else {
		FUNC3(PMAC_FTR_MESH_ENABLE, FUNC1(ms->mdev), 0, 0);
		FUNC2(10);
	}
}