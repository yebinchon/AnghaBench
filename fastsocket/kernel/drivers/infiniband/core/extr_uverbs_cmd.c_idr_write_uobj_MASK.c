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
struct ib_uobject {int /*<<< orphan*/  live; int /*<<< orphan*/  mutex; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 struct ib_uobject* FUNC0 (struct idr*,int,struct ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_uobject*) ; 

__attribute__((used)) static struct ib_uobject *FUNC3(struct idr *idr, int id,
					 struct ib_ucontext *context)
{
	struct ib_uobject *uobj;

	uobj = FUNC0(idr, id, context);
	if (!uobj)
		return NULL;

	FUNC1(&uobj->mutex);
	if (!uobj->live) {
		FUNC2(uobj);
		return NULL;
	}

	return uobj;
}