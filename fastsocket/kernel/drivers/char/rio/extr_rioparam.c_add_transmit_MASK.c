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
struct Port {scalar_t__ TxAdd; scalar_t__ TxEnd; TYPE_1__* PhbP; int /*<<< orphan*/  Caddr; int /*<<< orphan*/ * TxStart; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_add; } ;

/* Variables and functions */
 int PKT_IN_USE ; 
 int /*<<< orphan*/  RIO_DEBUG_PARAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(struct Port *PortP)
{
	if (FUNC1(PortP->TxAdd) & PKT_IN_USE) {
		FUNC2(RIO_DEBUG_PARAM, "add_transmit: Packet has been stolen!");
	}
	FUNC3(FUNC1(PortP->TxAdd) | PKT_IN_USE, PortP->TxAdd);
	PortP->TxAdd = (PortP->TxAdd == PortP->TxEnd) ? PortP->TxStart : PortP->TxAdd + 1;
	FUNC3(FUNC0(PortP->Caddr, PortP->TxAdd), &PortP->PhbP->tx_add);
}