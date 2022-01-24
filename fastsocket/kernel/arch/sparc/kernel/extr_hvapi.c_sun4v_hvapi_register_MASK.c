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
struct api_info {unsigned long major; unsigned long minor; int flags; scalar_t__ refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int FLAG_PRE_API ; 
 unsigned long HV_EBADTRAP ; 
 unsigned long HV_ENOTSUPPORTED ; 
 unsigned long HV_EOK ; 
 struct api_info* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct api_info*) ; 
 int /*<<< orphan*/  hvapi_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (unsigned long,unsigned long,unsigned long,unsigned long*) ; 

int FUNC5(unsigned long group, unsigned long major,
			 unsigned long *minor)
{
	struct api_info *p;
	unsigned long flags;
	int ret;

	FUNC2(&hvapi_lock, flags);
	p = FUNC0(group);
	ret = -EINVAL;
	if (p) {
		if (p->refcnt) {
			ret = -EINVAL;
			if (p->major == major) {
				*minor = p->minor;
				ret = 0;
			}
		} else {
			unsigned long actual_minor;
			unsigned long hv_ret;

			hv_ret = FUNC4(group, major, *minor,
						   &actual_minor);
			ret = -EINVAL;
			if (hv_ret == HV_EOK) {
				*minor = actual_minor;
				p->major = major;
				p->minor = actual_minor;
				ret = 0;
			} else if (hv_ret == HV_EBADTRAP ||
				   hv_ret == HV_ENOTSUPPORTED) {
				if (p->flags & FLAG_PRE_API) {
					if (major == 1) {
						p->major = 1;
						p->minor = 0;
						*minor = 0;
						ret = 0;
					}
				}
			}
		}

		if (ret == 0)
			FUNC1(p);
	}
	FUNC3(&hvapi_lock, flags);

	return ret;
}