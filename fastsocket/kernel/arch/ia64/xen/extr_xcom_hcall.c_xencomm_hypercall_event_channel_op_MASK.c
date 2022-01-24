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
struct xencomm_handle {int dummy; } ;
struct evtchn_op {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,struct xencomm_handle*) ; 
 struct xencomm_handle* FUNC1 (void*,int) ; 

int
FUNC2(int cmd, void *op)
{
	struct xencomm_handle *desc;
	desc = FUNC1(op, sizeof(struct evtchn_op));
	if (desc == NULL)
		return -EINVAL;

	return FUNC0(cmd, desc);
}