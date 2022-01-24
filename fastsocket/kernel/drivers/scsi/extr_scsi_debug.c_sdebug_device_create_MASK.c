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
struct sdebug_host_info {int /*<<< orphan*/  dev_info_list; } ;
struct sdebug_dev_info {int /*<<< orphan*/  dev_list; struct sdebug_host_info* sdbg_host; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sdebug_dev_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sdebug_dev_info *
FUNC2(struct sdebug_host_info *sdbg_host, gfp_t flags)
{
	struct sdebug_dev_info *devip;

	devip = FUNC0(sizeof(*devip), flags);
	if (devip) {
		devip->sdbg_host = sdbg_host;
		FUNC1(&devip->dev_list, &sdbg_host->dev_info_list);
	}
	return devip;
}