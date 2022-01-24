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
struct slgt_info {int /*<<< orphan*/  lock; scalar_t__ tx_enabled; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC5(struct slgt_info *info, int enable)
{
 	unsigned long flags;
	FUNC0(("%s tx_enable(%d)\n", info->device_name, enable));
	FUNC1(&info->lock,flags);
	if (enable) {
		if (!info->tx_enabled)
			FUNC3(info);
	} else {
		if (info->tx_enabled)
			FUNC4(info);
	}
	FUNC2(&info->lock,flags);
	return 0;
}