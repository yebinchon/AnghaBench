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
typedef  int u8 ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ S6_GPIO_MIS ; 
 scalar_t__ S6_REG_GPIO ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* FUNC3 (struct irq_desc*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(unsigned int irq, struct irq_desc *desc)
{
	u8 *mask = FUNC3(desc);
	u8 pending;
	int cirq;

	desc->chip->mask(irq);
	desc->chip->ack(irq);
	pending = FUNC4(S6_REG_GPIO + FUNC0(0) + S6_GPIO_MIS) & *mask;
	cirq = IRQ_BASE - 1;
	while (pending) {
		int n = FUNC1(pending);
		cirq += n;
		pending >>= n;
		FUNC2(cirq);
	}
	desc->chip->unmask(irq);
}