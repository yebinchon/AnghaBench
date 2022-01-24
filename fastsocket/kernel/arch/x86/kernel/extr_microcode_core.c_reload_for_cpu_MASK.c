#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucode_cpu_info {scalar_t__ valid; } ;
typedef  enum ucode_state { ____Placeholder_ucode_state } ucode_state ;
struct TYPE_4__ {int (* request_microcode_fw ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int UCODE_ERROR ; 
 int UCODE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  microcode_mutex ; 
 TYPE_2__* microcode_ops ; 
 TYPE_1__* microcode_pdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct ucode_cpu_info* ucode_cpu_info ; 

__attribute__((used)) static int FUNC4(int cpu)
{
	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
	int err = 0;

	FUNC1(&microcode_mutex);
	if (uci->valid) {
		enum ucode_state ustate;

		ustate = microcode_ops->request_microcode_fw(cpu, &microcode_pdev->dev);
		if (ustate == UCODE_OK)
			FUNC0(cpu);
		else
			if (ustate == UCODE_ERROR)
				err = -EINVAL;
	}
	FUNC2(&microcode_mutex);

	return err;
}