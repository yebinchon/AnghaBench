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
typedef  int u32 ;
struct agp_bridge_data {scalar_t__ capndx; } ;
struct TYPE_2__ {int /*<<< orphan*/  svrwrks_dev; } ;

/* Variables and functions */
 scalar_t__ PCI_AGP_COMMAND ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int FUNC0 (struct agp_bridge_data*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_1__ serverworks_private ; 

__attribute__((used)) static void FUNC4(struct agp_bridge_data *bridge, u32 mode)
{
	u32 command;

	FUNC2(serverworks_private.svrwrks_dev,
			      bridge->capndx + PCI_AGP_STATUS,
			      &command);

	command = FUNC0(bridge, mode, command);

	command &= ~0x10;	/* disable FW */
	command &= ~0x08;

	command |= 0x100;

	FUNC3(serverworks_private.svrwrks_dev,
			       bridge->capndx + PCI_AGP_COMMAND,
			       command);

	FUNC1(command, false);
}