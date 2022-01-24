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
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int /*<<< orphan*/  i2eUsingIrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ITRC_INTR ; 
 int /*<<< orphan*/  ITRC_NO_PORT ; 
 int /*<<< orphan*/  ITRC_RETURN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  irq_counter ; 

__attribute__((used)) static irqreturn_t
FUNC2(int irq, void *dev_id)
{
	i2eBordStrPtr pB = dev_id;

	FUNC1 (ITRC_NO_PORT, ITRC_INTR, 99, 1, pB->i2eUsingIrq );

	FUNC0(pB);

	++irq_counter;

	FUNC1 (ITRC_NO_PORT, ITRC_INTR, ITRC_RETURN, 0 );
	return IRQ_HANDLED;
}