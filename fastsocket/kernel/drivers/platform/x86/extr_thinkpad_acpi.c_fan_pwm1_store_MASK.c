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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int TP_EC_FAN_AUTO ; 
 int TP_EC_FAN_FULLSPEED ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  fan_mutex ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	unsigned long s;
	int rc;
	u8 status, newlevel;

	if (FUNC6(buf, 255, &s))
		return -EINVAL;

	FUNC7("hwmon pwm1",
			"set fan speed to %lu\n", s);

	/* scale down from 0-255 to 0-7 */
	newlevel = (s >> 5) & 0x07;

	if (FUNC4(&fan_mutex))
		return -ERESTARTSYS;

	rc = FUNC0(&status);
	if (!rc && (status &
		    (TP_EC_FAN_AUTO | TP_EC_FAN_FULLSPEED)) == 0) {
		rc = FUNC1(newlevel);
		if (rc == -ENXIO)
			rc = -EINVAL;
		else if (!rc) {
			FUNC2(newlevel);
			FUNC3();
		}
	}

	FUNC5(&fan_mutex);
	return (rc)? rc : count;
}