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
struct cpuidle_state_kobj {int /*<<< orphan*/  kobj; int /*<<< orphan*/  kobj_unregister; int /*<<< orphan*/ * state; } ;
struct cpuidle_device {int state_count; struct cpuidle_state_kobj** kobjs; int /*<<< orphan*/  kobj; int /*<<< orphan*/ * states; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuidle_state_kobj*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktype_state_cpuidle ; 
 struct cpuidle_state_kobj* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct cpuidle_device *device)
{
	int i, ret = -ENOMEM;
	struct cpuidle_state_kobj *kobj;

	/* state statistics */
	for (i = 0; i < device->state_count; i++) {
		kobj = FUNC5(sizeof(struct cpuidle_state_kobj), GFP_KERNEL);
		if (!kobj)
			goto error_state;
		kobj->state = &device->states[i];
		FUNC1(&kobj->kobj_unregister);

		ret = FUNC3(&kobj->kobj, &ktype_state_cpuidle, &device->kobj,
					   "state%d", i);
		if (ret) {
			FUNC2(kobj);
			goto error_state;
		}
		FUNC4(&kobj->kobj, KOBJ_ADD);
		device->kobjs[i] = kobj;
	}

	return 0;

error_state:
	for (i = i - 1; i >= 0; i--)
		FUNC0(device, i);
	return ret;
}