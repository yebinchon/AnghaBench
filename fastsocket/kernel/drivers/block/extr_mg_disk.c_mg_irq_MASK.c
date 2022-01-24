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
struct mg_host {void (* mg_do_intr ) (struct mg_host*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void FUNC1 (struct mg_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct mg_host *host = dev_id;
	void (*handler)(struct mg_host *) = host->mg_do_intr;

	FUNC2(&host->lock);

	host->mg_do_intr = NULL;
	FUNC0(&host->timer);
	if (!handler)
		handler = mg_unexpected_intr;
	handler(host);

	FUNC3(&host->lock);

	return IRQ_HANDLED;
}