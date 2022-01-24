#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {scalar_t__ expires; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ap_config_time ; 
 TYPE_1__ ap_config_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int FUNC2 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static ssize_t FUNC4(struct bus_type *bus,
				    const char *buf, size_t count)
{
	int time;

	if (FUNC2(buf, "%d\n", &time) != 1 || time < 5 || time > 120)
		return -EINVAL;
	ap_config_time = time;
	if (!FUNC3(&ap_config_timer) ||
	    !FUNC1(&ap_config_timer, jiffies + ap_config_time * HZ)) {
		ap_config_timer.expires = jiffies + ap_config_time * HZ;
		FUNC0(&ap_config_timer);
	}
	return count;
}