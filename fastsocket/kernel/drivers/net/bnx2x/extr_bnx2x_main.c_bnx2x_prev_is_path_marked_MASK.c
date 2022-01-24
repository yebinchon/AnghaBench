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
struct bnx2x_prev_path_list {scalar_t__ aer; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 struct bnx2x_prev_path_list* FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_prev_sem ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct bnx2x *bp)
{
	struct bnx2x_prev_path_list *tmp_list;
	int rc = false;

	if (FUNC4(&bnx2x_prev_sem))
		return false;

	tmp_list = FUNC3(bp);
	if (tmp_list) {
		if (tmp_list->aer) {
			FUNC2(NETIF_MSG_HW, "Path %d was marked by AER\n",
			   FUNC1(bp));
		} else {
			rc = true;
			FUNC0("Path %d was already cleaned from previous drivers\n",
				       FUNC1(bp));
		}
	}

	FUNC5(&bnx2x_prev_sem);

	return rc;
}