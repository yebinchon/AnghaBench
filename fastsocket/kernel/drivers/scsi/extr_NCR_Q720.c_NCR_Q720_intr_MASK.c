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
struct NCR_Q720_private {int irq_enable; int siops; int /*<<< orphan*/ * hosts; scalar_t__ mem_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t
FUNC3(int irq, void *data)
{
	struct NCR_Q720_private *p = (struct NCR_Q720_private *)data;
	__u8 sir = (FUNC2(p->mem_base + 0x0d) & 0xf0) >> 4;
	__u8 siop;

	sir |= ~p->irq_enable;

	if(sir == 0xff)
		return IRQ_NONE;


	while((siop = FUNC0(sir)) < p->siops) {
		sir |= 1<<siop;
		FUNC1(irq, p->hosts[siop]);
	}
	return IRQ_HANDLED;
}