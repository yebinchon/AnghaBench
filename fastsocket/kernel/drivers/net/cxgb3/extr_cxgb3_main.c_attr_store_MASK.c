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
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct net_device*,unsigned int) ; 
 struct net_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
			  const char *buf, size_t len,
			  ssize_t(*set) (struct net_device *, unsigned int),
			  unsigned int min_val, unsigned int max_val)
{
	char *endp;
	ssize_t ret;
	unsigned int val;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	val = FUNC3(buf, &endp, 0);
	if (endp == buf || val < min_val || val > max_val)
		return -EINVAL;

	FUNC1();
	ret = (*set) (FUNC5(d), val);
	if (!ret)
		ret = len;
	FUNC2();
	return ret;
}