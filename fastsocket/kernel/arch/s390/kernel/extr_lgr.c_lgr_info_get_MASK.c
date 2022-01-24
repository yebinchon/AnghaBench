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
struct lgr_info {int level; int /*<<< orphan*/  stfle_fac_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct lgr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct lgr_info *lgr_info)
{
	FUNC4(lgr_info, 0, sizeof(*lgr_info));
	FUNC5(lgr_info->stfle_fac_list, FUNC0(lgr_info->stfle_fac_list));
	lgr_info->level = FUNC6();
	if (lgr_info->level == -ENOSYS)
		return;
	if (lgr_info->level >= 1)
		FUNC1(lgr_info);
	if (lgr_info->level >= 2)
		FUNC2(lgr_info);
	if (lgr_info->level >= 3)
		FUNC3(lgr_info);
}