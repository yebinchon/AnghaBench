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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int DISK_NAME_LEN ; 
 int E2BIG ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(const char *val, struct kernel_param *kp)
{
	/* val must be "md_*" where * is not all digits.
	 * We allocate an array with a large free minor number, and
	 * set the name to val.  val must not already be an active name.
	 */
	int len = FUNC2(val);
	char buf[DISK_NAME_LEN];

	while (len && val[len-1] == '\n')
		len--;
	if (len >= DISK_NAME_LEN)
		return -E2BIG;
	FUNC1(buf, val, len+1);
	if (FUNC3(buf, "md_", 3) != 0)
		return -EINVAL;
	return FUNC0(0, buf);
}