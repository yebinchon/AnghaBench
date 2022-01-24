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
 scalar_t__ AVM_ISACSX_DATA ; 
 scalar_t__ AVM_ISACSX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct isac *isac, unsigned char offset, 
			      unsigned char value)
{
	struct fritz_adapter *adapter = isac->priv;
	unsigned long flags;

	FUNC0(0x1000, " port %#x, value %#x",
	    offset, value);
	FUNC2(&adapter->hw_lock, flags);
	FUNC1(offset, adapter->io + AVM_ISACSX_INDEX);
	FUNC1(value, adapter->io + AVM_ISACSX_DATA);
 	FUNC3(&adapter->hw_lock, flags);
}