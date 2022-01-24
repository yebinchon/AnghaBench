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
struct sge {int /*<<< orphan*/  sge_control; } ;
struct adapter {scalar_t__ regs; scalar_t__ open_device_map; struct sge* sge; } ;

/* Variables and functions */
 scalar_t__ A_SG_CONTROL ; 
 int /*<<< orphan*/  F_VLAN_XTRACT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct adapter *adapter, int on_off)
{
	struct sge *sge = adapter->sge;

	sge->sge_control &= ~F_VLAN_XTRACT;
	if (on_off)
		sge->sge_control |= F_VLAN_XTRACT;
	if (adapter->open_device_map) {
		FUNC1(sge->sge_control, adapter->regs + A_SG_CONTROL);
		FUNC0(adapter->regs + A_SG_CONTROL);   /* flush */
	}
}