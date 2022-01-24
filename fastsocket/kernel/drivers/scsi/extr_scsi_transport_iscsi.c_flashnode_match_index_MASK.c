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
struct iscsi_bus_flash_session {int target_id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iscsi_bus_flash_session* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct iscsi_bus_flash_session *fnode_sess = NULL;
	int ret = 0;

	if (!FUNC1(dev, NULL))
		goto exit_match_index;

	fnode_sess = FUNC0(dev);
	ret = (fnode_sess->target_id == *((int *)data)) ? 1 : 0;

exit_match_index:
	return ret;
}