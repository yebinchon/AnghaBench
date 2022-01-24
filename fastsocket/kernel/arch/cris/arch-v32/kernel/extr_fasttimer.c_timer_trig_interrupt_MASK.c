#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  trig; } ;
typedef  TYPE_1__ reg_timer_r_masked_intr ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_masked_intr ; 
 int /*<<< orphan*/  regi_timer0 ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC2(int irq, void *dev_id)
{
  reg_timer_r_masked_intr masked_intr;
  /* Check if the timer interrupt is for us (a trig int) */
	masked_intr = FUNC0(timer, regi_timer0, r_masked_intr);
  if (!masked_intr.trig)
    return IRQ_NONE;
	FUNC1(NULL);
  return IRQ_HANDLED;
}