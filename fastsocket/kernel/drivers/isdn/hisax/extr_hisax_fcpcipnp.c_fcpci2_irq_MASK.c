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
struct fritz_adapter {int /*<<< orphan*/  isac; scalar_t__ io; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AVM_STATUS0 ; 
 unsigned char AVM_STATUS0_IRQ_HDLC ; 
 unsigned char AVM_STATUS0_IRQ_ISAC ; 
 unsigned char AVM_STATUS0_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct fritz_adapter*) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int intno, void *dev)
{
	struct fritz_adapter *adapter = dev;
	unsigned char val;

	val = FUNC2(adapter->io + AVM_STATUS0);
	if (!(val & AVM_STATUS0_IRQ_MASK))
		/* hopefully a shared  IRQ reqest */
		return IRQ_NONE;
	FUNC0(2, "STATUS0 %#x", val);
	if (val & AVM_STATUS0_IRQ_ISAC)
		FUNC3(&adapter->isac);
	if (val & AVM_STATUS0_IRQ_HDLC)
		FUNC1(adapter);
	if (val & AVM_STATUS0_IRQ_ISAC)
		FUNC3(&adapter->isac);
	return IRQ_HANDLED;
}