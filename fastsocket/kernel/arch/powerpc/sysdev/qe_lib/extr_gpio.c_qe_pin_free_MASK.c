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
struct qe_pin {int num; struct qe_gpio_chip* controller; } ;
struct qe_gpio_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pin_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QE_PIN_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (struct qe_pin*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct qe_pin *qe_pin)
{
	struct qe_gpio_chip *qe_gc = qe_pin->controller;
	unsigned long flags;
	const int pin = qe_pin->num;

	FUNC1(&qe_gc->lock, flags);
	FUNC3(QE_PIN_REQUESTED, &qe_gc->pin_flags[pin]);
	FUNC2(&qe_gc->lock, flags);

	FUNC0(qe_pin);
}