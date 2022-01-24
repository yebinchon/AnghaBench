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
typedef  size_t u8 ;
struct sci_sas_address {int dummy; } ;
struct sci_port_configuration_agent {TYPE_1__* phy_valid_port_range; } ;
struct isci_host {int /*<<< orphan*/ * phys; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {size_t min_index; size_t max_index; } ;

/* Variables and functions */
 size_t SCI_MAX_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sci_sas_address*) ; 
 int FUNC1 (struct isci_host*,struct sci_port_configuration_agent*) ; 
 scalar_t__ FUNC2 (struct sci_sas_address,struct sci_sas_address) ; 

__attribute__((used)) static enum sci_status
FUNC3(struct isci_host *ihost,
					      struct sci_port_configuration_agent *port_agent)
{
	u8 phy_index;
	u8 port_index;
	struct sci_sas_address sas_address;
	struct sci_sas_address phy_assigned_address;

	phy_index = 0;

	while (phy_index < SCI_MAX_PHYS) {
		port_index = phy_index;

		/* Get the assigned SAS Address for the first PHY on the controller. */
		FUNC0(&ihost->phys[phy_index],
					    &sas_address);

		while (++phy_index < SCI_MAX_PHYS) {
			FUNC0(&ihost->phys[phy_index],
						     &phy_assigned_address);

			/* Verify each of the SAS address are all the same for every PHY */
			if (FUNC2(sas_address, phy_assigned_address) == 0) {
				port_agent->phy_valid_port_range[phy_index].min_index = port_index;
				port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
			} else {
				port_agent->phy_valid_port_range[phy_index].min_index = phy_index;
				port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
				break;
			}
		}
	}

	return FUNC1(ihost, port_agent);
}