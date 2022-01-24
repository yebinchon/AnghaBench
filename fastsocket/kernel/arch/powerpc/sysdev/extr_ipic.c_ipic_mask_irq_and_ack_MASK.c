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
typedef  int u32 ;
struct ipic {int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int bit; int /*<<< orphan*/  ack; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 struct ipic* FUNC0 (unsigned int) ; 
 TYPE_1__* ipic_info ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ipic_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned int virq)
{
	struct ipic *ipic = FUNC0(virq);
	unsigned int src = FUNC1(virq);
	unsigned long flags;
	u32 temp;

	FUNC5(&ipic_lock, flags);

	temp = FUNC2(ipic->regs, ipic_info[src].mask);
	temp &= ~(1 << (31 - ipic_info[src].bit));
	FUNC3(ipic->regs, ipic_info[src].mask, temp);

	temp = 1 << (31 - ipic_info[src].bit);
	FUNC3(ipic->regs, ipic_info[src].ack, temp);

	/* mb() can't guarantee that ack is finished.  But it does finish
	 * for nearly all cases. */
	FUNC4();

	FUNC6(&ipic_lock, flags);
}