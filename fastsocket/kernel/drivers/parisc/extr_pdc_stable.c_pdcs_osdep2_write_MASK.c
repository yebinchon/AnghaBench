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
typedef  int /*<<< orphan*/  u8 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 size_t EIO ; 
 size_t EMSGSIZE ; 
 size_t ENOSYS ; 
 size_t EPERM ; 
 scalar_t__ OS_ID_LINUX ; 
 scalar_t__ PDCS_ADDR_OSD2 ; 
 scalar_t__ PDC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ **,int) ; 
 scalar_t__ pdcs_osid ; 
 int pdcs_size ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
				 struct kobj_attribute *attr,
				 const char *buf, size_t count)
{
	unsigned long size;
	unsigned short i;
	u8 in[4];

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (!buf || !count)
		return -EINVAL;

	if (FUNC4(pdcs_size <= 224))
		return -ENOSYS;

	if (FUNC4(pdcs_osid != OS_ID_LINUX))
		return -EPERM;

	size = pdcs_size - 224;

	if (count > size)
		return -EMSGSIZE;

	/* We'll use a local copy of buf */

	for (i=0; i<count; i+=4) {
		FUNC2(in, 0, 4);
		FUNC1(in, buf+i, (count-i < 4) ? count-i : 4);
		if (FUNC4(FUNC3(PDCS_ADDR_OSD2 + i, &in,
					sizeof(in)) != PDC_OK))
			return -EIO;
	}

	return count;
}