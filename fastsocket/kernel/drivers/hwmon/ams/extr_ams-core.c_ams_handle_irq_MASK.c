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
typedef  enum ams_irq { ____Placeholder_ams_irq } ams_irq ;
struct TYPE_2__ {int worker_irqs; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  worker; } ;

/* Variables and functions */
 TYPE_1__ ams_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	enum ams_irq irq = *((enum ams_irq *)data);

	FUNC1(&ams_info.irq_lock);

	ams_info.worker_irqs |= irq;
	FUNC0(&ams_info.worker);

	FUNC2(&ams_info.irq_lock);
}