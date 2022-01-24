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
struct bq27x00_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27x00_REG_VOLT ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct bq27x00_device_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct bq27x00_device_info *di)
{
	int ret;
	int volt = 0;

	ret = FUNC0(BQ27x00_REG_VOLT, &volt, 0, di);
	if (ret) {
		FUNC1(di->dev, "error reading voltage\n");
		return ret;
	}

	return volt;
}