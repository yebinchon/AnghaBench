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
struct fritz_adapter {scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_STATUS0 ; 
 int /*<<< orphan*/  AVM_STATUS0_ENA_IRQ ; 
 int /*<<< orphan*/  AVM_STATUS0_RES_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct fritz_adapter *adapter)
{
	FUNC0(AVM_STATUS0_RES_TIMER, adapter->io + AVM_STATUS0);
	FUNC0(AVM_STATUS0_ENA_IRQ, adapter->io + AVM_STATUS0);

}