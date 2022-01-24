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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  REGULATOR_MODE_FAST 131 
#define  REGULATOR_MODE_IDLE 130 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC1(char *buf, int mode)
{
	switch (mode) {
	case REGULATOR_MODE_FAST:
		return FUNC0(buf, "fast\n");
	case REGULATOR_MODE_NORMAL:
		return FUNC0(buf, "normal\n");
	case REGULATOR_MODE_IDLE:
		return FUNC0(buf, "idle\n");
	case REGULATOR_MODE_STANDBY:
		return FUNC0(buf, "standby\n");
	}
	return FUNC0(buf, "unknown\n");
}