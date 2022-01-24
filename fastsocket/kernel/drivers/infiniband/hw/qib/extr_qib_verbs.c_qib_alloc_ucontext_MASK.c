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
struct ib_ucontext {int dummy; } ;
struct qib_ucontext {struct ib_ucontext ibucontext; } ;
struct ib_udata {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_ucontext* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct qib_ucontext* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_ucontext *FUNC2(struct ib_device *ibdev,
					      struct ib_udata *udata)
{
	struct qib_ucontext *context;
	struct ib_ucontext *ret;

	context = FUNC1(sizeof *context, GFP_KERNEL);
	if (!context) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	ret = &context->ibucontext;

bail:
	return ret;
}