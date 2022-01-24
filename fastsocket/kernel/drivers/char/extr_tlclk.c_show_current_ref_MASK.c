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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TLCLK_REG1 ; 
 int /*<<< orphan*/  event_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d,
		struct device_attribute *attr, char *buf)
{
	unsigned long ret_val;
	unsigned long flags;

	FUNC1(&event_lock, flags);
	ret_val = ((FUNC0(TLCLK_REG1) & 0x08) >> 3);
	FUNC2(&event_lock, flags);

	return FUNC3(buf, "0x%lX\n", ret_val);
}