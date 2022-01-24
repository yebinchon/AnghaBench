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
struct sbp2_target {int dummy; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sbp2_target* FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_unit* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp2_target*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct fw_unit *unit = FUNC1(dev);
	struct sbp2_target *tgt = FUNC0(&unit->device);

	FUNC2(tgt);
	return 0;
}