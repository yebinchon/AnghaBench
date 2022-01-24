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
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
struct ehca_ucontext {struct ib_ucontext ib_ucontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_ucontext* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,char*,struct ib_device*) ; 
 struct ehca_ucontext* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct ib_ucontext *FUNC3(struct ib_device *device,
					struct ib_udata *udata)
{
	struct ehca_ucontext *my_context;

	my_context = FUNC2(sizeof *my_context, GFP_KERNEL);
	if (!my_context) {
		FUNC1(device, "Out of memory device=%p", device);
		return FUNC0(-ENOMEM);
	}

	return &my_context->ib_ucontext;
}