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
struct fritz_adapter {int irq; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_STATUS0 ; 
 int AVM_STATUS0_DIS_TIMER ; 
 int AVM_STATUS0_ENA_IRQ ; 
 int AVM_STATUS0_RES_TIMER ; 
 scalar_t__ AVM_STATUS1 ; 
 int AVM_STATUS1_ENA_IOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct fritz_adapter *adapter)
{
	FUNC1(AVM_STATUS0_DIS_TIMER | AVM_STATUS0_RES_TIMER | 
	     AVM_STATUS0_ENA_IRQ, adapter->io + AVM_STATUS0);

	FUNC1(AVM_STATUS1_ENA_IOM | adapter->irq, 
	     adapter->io + AVM_STATUS1);
	FUNC0(10);
}