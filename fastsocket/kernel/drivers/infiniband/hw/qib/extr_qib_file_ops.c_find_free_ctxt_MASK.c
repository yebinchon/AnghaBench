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
struct qib_user_info {scalar_t__ spu_port; } ;
struct qib_devdata {scalar_t__ num_pports; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct file*,struct qib_devdata*,scalar_t__,struct qib_user_info const*) ; 
 struct qib_devdata* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int unit, struct file *fp,
			  const struct qib_user_info *uinfo)
{
	struct qib_devdata *dd = FUNC1(unit);
	int ret;

	if (!dd || (uinfo->spu_port && uinfo->spu_port > dd->num_pports))
		ret = -ENODEV;
	else
		ret = FUNC0(fp, dd, uinfo->spu_port, uinfo);

	return ret;
}