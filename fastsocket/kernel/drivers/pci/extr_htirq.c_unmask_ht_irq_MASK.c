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
struct ht_irq_msg {int address_lo; } ;
struct ht_irq_cfg {struct ht_irq_msg msg; } ;

/* Variables and functions */
 struct ht_irq_cfg* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct ht_irq_msg*) ; 

void FUNC2(unsigned int irq)
{
	struct ht_irq_cfg *cfg;
	struct ht_irq_msg msg;

	cfg = FUNC0(irq);

	msg = cfg->msg;
	msg.address_lo &= ~1;
	FUNC1(irq, &msg);
}