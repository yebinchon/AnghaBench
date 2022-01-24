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
struct idr {int dummy; } ;
struct ib_uobject {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ib_uverbs_idr_lock ; 
 int /*<<< orphan*/  FUNC0 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct idr *idr, struct ib_uobject *uobj)
{
	FUNC1(&ib_uverbs_idr_lock);
	FUNC0(idr, uobj->id);
	FUNC2(&ib_uverbs_idr_lock);
}