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
struct vpe {unsigned long ntcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct vpe* FUNC0 (unsigned long) ; 
 unsigned long hw_tcs ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 unsigned long tclimit ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t len)
{
	struct vpe *vpe = FUNC0(tclimit);
	unsigned long new;
	char *endp;

	new = FUNC1(buf, &endp, 0);
	if (endp == buf)
		goto out_einval;

	if (new == 0 || new > (hw_tcs - tclimit))
		goto out_einval;

	vpe->ntcs = new;

	return len;

out_einval:
	return -EINVAL;
}