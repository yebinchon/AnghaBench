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
struct smi_info {int /*<<< orphan*/  si_timer; int /*<<< orphan*/ * thread; scalar_t__ intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct smi_info *smi_info)
{
	if (smi_info->intf) {
		/*
		 * The timer and thread are only running if the
		 * interface has been started up and registered.
		 */
		if (smi_info->thread != NULL)
			FUNC1(smi_info->thread);
		FUNC0(&smi_info->si_timer);
	}
}