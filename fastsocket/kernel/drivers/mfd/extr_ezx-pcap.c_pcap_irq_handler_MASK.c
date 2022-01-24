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
struct pcap_chip {int /*<<< orphan*/  isr_work; int /*<<< orphan*/  workqueue; } ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ack ) (unsigned int) ;} ;

/* Variables and functions */
 struct pcap_chip* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int irq, struct irq_desc *desc)
{
	struct pcap_chip *pcap = FUNC0(irq);

	desc->chip->ack(irq);
	FUNC1(pcap->workqueue, &pcap->isr_work);
	return;
}