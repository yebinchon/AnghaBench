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
struct pmi_handler {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler_spinlock; } ;

/* Variables and functions */
 TYPE_1__* data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pmi_handler*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pmi_handler *handler)
{
	if (!data)
		return;

	FUNC1("pmi: unregistering handler %p\n", handler);

	FUNC2(&data->handler_spinlock);
	FUNC0(&handler->node);
	FUNC3(&data->handler_spinlock);
}