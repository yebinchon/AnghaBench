#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ib_mr_attr {int dummy; } ;
struct ib_mr {TYPE_1__* device; } ;
struct TYPE_2__ {int (* query_mr ) (struct ib_mr*,struct ib_mr_attr*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int FUNC0 (struct ib_mr*,struct ib_mr_attr*) ; 

int FUNC1(struct ib_mr *mr, struct ib_mr_attr *mr_attr)
{
	return mr->device->query_mr ?
		mr->device->query_mr(mr, mr_attr) : -ENOSYS;
}