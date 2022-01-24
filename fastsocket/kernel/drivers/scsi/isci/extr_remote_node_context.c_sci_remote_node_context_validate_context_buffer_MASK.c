#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_valid; } ;
union scu_remote_node_context {TYPE_1__ ssp; } ;
struct sci_remote_node_context {int /*<<< orphan*/  remote_node_index; } ;
struct isci_remote_device {TYPE_2__* owning_port; struct domain_device* domain_dev; } ;
struct isci_host {int dummy; } ;
struct domain_device {scalar_t__ parent; } ;
struct TYPE_4__ {struct isci_host* owning_controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCU_CONTEXT_COMMAND_POST_RNC_32 ; 
 int /*<<< orphan*/  SCU_CONTEXT_COMMAND_POST_RNC_96 ; 
 scalar_t__ FUNC0 (struct domain_device*) ; 
 struct isci_remote_device* FUNC1 (struct sci_remote_node_context*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_remote_device*,int /*<<< orphan*/ ) ; 
 union scu_remote_node_context* FUNC4 (struct isci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sci_remote_node_context *sci_rnc)
{
	union scu_remote_node_context *rnc_buffer;
	struct isci_remote_device *idev = FUNC1(sci_rnc);
	struct domain_device *dev = idev->domain_dev;
	struct isci_host *ihost = idev->owning_port->owning_controller;

	rnc_buffer = FUNC4(ihost, sci_rnc->remote_node_index);

	rnc_buffer->ssp.is_valid = true;

	if (FUNC0(dev) && dev->parent) {
		FUNC3(idev, SCU_CONTEXT_COMMAND_POST_RNC_96);
	} else {
		FUNC3(idev, SCU_CONTEXT_COMMAND_POST_RNC_32);

		if (!dev->parent)
			FUNC2(idev->owning_port,
						  sci_rnc->remote_node_index);
	}
}