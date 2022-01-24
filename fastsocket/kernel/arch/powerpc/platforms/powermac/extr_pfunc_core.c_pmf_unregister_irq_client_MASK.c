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
struct pmf_irq_client {int /*<<< orphan*/  link; struct pmf_function* func; } ;
struct pmf_function {TYPE_2__* dev; int /*<<< orphan*/  irq_clients; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_disable ) (struct pmf_function*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmf_irq_mutex ; 
 int /*<<< orphan*/  pmf_lock ; 
 int /*<<< orphan*/  FUNC5 (struct pmf_function*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pmf_function*) ; 

void FUNC9(struct pmf_irq_client *client)
{
	struct pmf_function *func = client->func;
	unsigned long flags;

	FUNC0(func == NULL);

	/* guard against manipulations of list */
	FUNC3(&pmf_irq_mutex);
	client->func = NULL;

	/* guard against pmf_do_irq while changing list */
	FUNC6(&pmf_lock, flags);
	FUNC1(&client->link);
	FUNC7(&pmf_lock, flags);

	if (FUNC2(&func->irq_clients))
		func->dev->handlers->irq_disable(func);
	FUNC4(&pmf_irq_mutex);
	FUNC5(func);
}