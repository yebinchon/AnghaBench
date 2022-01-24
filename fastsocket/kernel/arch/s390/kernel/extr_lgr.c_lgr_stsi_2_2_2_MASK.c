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
struct sysinfo_2_2_2 {int /*<<< orphan*/  lpar_number; int /*<<< orphan*/  name; } ;
struct lgr_info {int /*<<< orphan*/  lpar_number; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ lgr_page ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sysinfo_2_2_2*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct lgr_info *lgr_info)
{
	struct sysinfo_2_2_2 *si = (void *) lgr_page;

	if (FUNC2(si, 2, 2, 2) == -ENOSYS)
		return;
	FUNC0(lgr_info->name, si->name, sizeof(si->name));
	FUNC1(&lgr_info->lpar_number, &si->lpar_number,
	       sizeof(lgr_info->lpar_number));
}