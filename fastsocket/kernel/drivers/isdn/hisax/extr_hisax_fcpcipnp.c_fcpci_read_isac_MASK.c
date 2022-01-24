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
struct isac {struct fritz_adapter* priv; } ;
struct fritz_adapter {int /*<<< orphan*/  hw_lock; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_DATA ; 
 unsigned char AVM_IDX_ISAC_REG_HIGH ; 
 unsigned char AVM_IDX_ISAC_REG_LOW ; 
 scalar_t__ AVM_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char,unsigned char) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC5(struct isac *isac, unsigned char offset)
{
	struct fritz_adapter *adapter = isac->priv;
	unsigned char idx = (offset > 0x2f) ? 
		AVM_IDX_ISAC_REG_HIGH : AVM_IDX_ISAC_REG_LOW;
	unsigned char val;
	unsigned long flags;

	FUNC3(&adapter->hw_lock, flags);
	FUNC2(idx, adapter->io + AVM_INDEX);
	val = FUNC1(adapter->io + AVM_DATA + (offset & 0xf));
 	FUNC4(&adapter->hw_lock, flags);
	FUNC0(0x1000, " port %#x, value %#x",
	    offset, val);
	return val;
}