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
struct binder_ref {scalar_t__ strong; scalar_t__ weak; int /*<<< orphan*/  desc; int /*<<< orphan*/  debug_id; TYPE_1__* proc; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_ref*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct binder_ref *ref, int strong)
{
	if (strong) {
		if (ref->strong == 0) {
			FUNC2("binder: %d invalid dec strong, "
					  "ref %d desc %d s %d w %d\n",
					  ref->proc->pid, ref->debug_id,
					  ref->desc, ref->strong, ref->weak);
			return -EINVAL;
		}
		ref->strong--;
		if (ref->strong == 0) {
			int ret;
			ret = FUNC0(ref->node, strong, 1);
			if (ret)
				return ret;
		}
	} else {
		if (ref->weak == 0) {
			FUNC2("binder: %d invalid dec weak, "
					  "ref %d desc %d s %d w %d\n",
					  ref->proc->pid, ref->debug_id,
					  ref->desc, ref->strong, ref->weak);
			return -EINVAL;
		}
		ref->weak--;
	}
	if (ref->strong == 0 && ref->weak == 0)
		FUNC1(ref);
	return 0;
}