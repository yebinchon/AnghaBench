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
struct poll_table_struct {int dummy; } ;
struct ipath_portdata {int poll_type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int IPATH_POLL_TYPE_URGENT ; 
 unsigned int FUNC0 (struct ipath_portdata*,struct file*,struct poll_table_struct*) ; 
 unsigned int FUNC1 (struct ipath_portdata*,struct file*,struct poll_table_struct*) ; 
 struct ipath_portdata* FUNC2 (struct file*) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *fp,
			       struct poll_table_struct *pt)
{
	struct ipath_portdata *pd;
	unsigned pollflag;

	pd = FUNC2(fp);
	if (!pd)
		pollflag = 0;
	else if (pd->poll_type & IPATH_POLL_TYPE_URGENT)
		pollflag = FUNC1(pd, fp, pt);
	else
		pollflag = FUNC0(pd, fp, pt);

	return pollflag;
}