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
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct isac *isac, unsigned char * data, 
				  int size)
{
	struct fritz_adapter *adapter = isac->priv;
	int i;
	unsigned long flags;

	FUNC2(&adapter->hw_lock, flags);
	FUNC1(0, adapter->io + AVM_ISACSX_INDEX);
	for (i = 0; i < size; i++)
		data[i] = FUNC0(adapter->io + AVM_ISACSX_DATA);
 	FUNC3(&adapter->hw_lock, flags);
}