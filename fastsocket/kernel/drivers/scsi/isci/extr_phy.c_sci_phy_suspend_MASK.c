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
typedef  int /*<<< orphan*/  u32 ;
struct isci_phy {TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_configuration; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUSPEND_PROTOCOL_ENGINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct isci_phy *iphy)
{
	u32 scu_sas_pcfg_value;

	scu_sas_pcfg_value =
		FUNC1(&iphy->link_layer_registers->phy_configuration);
	scu_sas_pcfg_value |= FUNC0(SUSPEND_PROTOCOL_ENGINE);
	FUNC3(scu_sas_pcfg_value,
		&iphy->link_layer_registers->phy_configuration);

	FUNC2(iphy, SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX);
}