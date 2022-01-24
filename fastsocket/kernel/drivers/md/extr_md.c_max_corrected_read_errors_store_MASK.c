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
struct mddev {int /*<<< orphan*/  max_corr_read_errors; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, const char *buf, size_t len)
{
	char *e;
	unsigned long n = FUNC1(buf, &e, 10);

	if (*buf && (*e == 0 || *e == '\n')) {
		FUNC0(&mddev->max_corr_read_errors, n);
		return len;
	}
	return -EINVAL;
}