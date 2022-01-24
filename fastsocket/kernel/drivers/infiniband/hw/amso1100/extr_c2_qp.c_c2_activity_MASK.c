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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct c2_dev {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_BAR0_ADAPTER_HINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct c2_dev *c2dev, u32 mq_index, u16 shared)
{
	/*
	 * First read the register to see if the FIFO is full, and if so,
	 * spin until it's not.  This isn't perfect -- there is no
	 * synchronization among the clients of the register, but in
	 * practice it prevents multiple CPU from hammering the bus
	 * with PCI RETRY. Note that when this does happen, the card
	 * cannot get on the bus and the card and system hang in a
	 * deadlock -- thus the need for this code. [TOT]
	 */
	while (FUNC2(c2dev->regs + PCI_BAR0_ADAPTER_HINT) & 0x80000000)
		FUNC3(10);

	FUNC1(FUNC0(mq_index, shared),
		     c2dev->regs + PCI_BAR0_ADAPTER_HINT);
}