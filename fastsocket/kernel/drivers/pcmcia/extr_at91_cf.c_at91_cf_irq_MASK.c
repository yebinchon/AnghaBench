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
struct at91_cf_socket {unsigned int present; int /*<<< orphan*/  socket; TYPE_1__* board; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int det_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SS_DETECT ; 
 unsigned int FUNC0 (struct at91_cf_socket*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_cf)
{
	struct at91_cf_socket *cf = _cf;

	if (irq == cf->board->det_pin) {
		unsigned present = FUNC0(cf);

		/* kick pccard as needed */
		if (present != cf->present) {
			cf->present = present;
			FUNC2("%s: card %s\n", driver_name,
					present ? "present" : "gone");
			FUNC1(&cf->socket, SS_DETECT);
		}
	}

	return IRQ_HANDLED;
}