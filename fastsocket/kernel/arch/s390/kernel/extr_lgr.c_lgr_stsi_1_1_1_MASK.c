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
struct sysinfo_1_1_1 {int /*<<< orphan*/  plant; int /*<<< orphan*/  sequence; int /*<<< orphan*/  model; int /*<<< orphan*/  type; int /*<<< orphan*/  manufacturer; } ;
struct lgr_info {int /*<<< orphan*/  plant; int /*<<< orphan*/  sequence; int /*<<< orphan*/  model; int /*<<< orphan*/  type; int /*<<< orphan*/  manufacturer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ lgr_page ; 
 int /*<<< orphan*/  FUNC1 (struct sysinfo_1_1_1*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct lgr_info *lgr_info)
{
	struct sysinfo_1_1_1 *si = (void *) lgr_page;

	if (FUNC1(si, 1, 1, 1) == -ENOSYS)
		return;
	FUNC0(lgr_info->manufacturer, si->manufacturer,
		sizeof(si->manufacturer));
	FUNC0(lgr_info->type, si->type, sizeof(si->type));
	FUNC0(lgr_info->model, si->model, sizeof(si->model));
	FUNC0(lgr_info->sequence, si->sequence, sizeof(si->sequence));
	FUNC0(lgr_info->plant, si->plant, sizeof(si->plant));
}