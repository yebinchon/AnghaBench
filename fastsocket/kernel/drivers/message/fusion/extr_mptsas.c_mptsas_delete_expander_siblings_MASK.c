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
struct TYPE_2__ {scalar_t__ device_type; int /*<<< orphan*/  sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct mptsas_phyinfo {int dummy; } ;
typedef  int /*<<< orphan*/  MPT_ADAPTER ;

/* Variables and functions */
 scalar_t__ MPI_SAS_DEVICE_INFO_EDGE_EXPANDER ; 
 scalar_t__ MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER ; 
 scalar_t__ SAS_END_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mptsas_phyinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mptsas_portinfo*,int) ; 
 struct mptsas_portinfo* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sas_rphy* FUNC3 (struct mptsas_phyinfo*) ; 

__attribute__((used)) static void
FUNC4(MPT_ADAPTER *ioc, struct mptsas_portinfo
    *parent, struct mptsas_portinfo *expander)
{
	struct mptsas_phyinfo *phy_info;
	struct mptsas_portinfo *port_info;
	struct sas_rphy *rphy;
	int i;

	phy_info = expander->phy_info;
	for (i = 0; i < expander->num_phys; i++, phy_info++) {
		rphy = FUNC3(phy_info);
		if (!rphy)
			continue;
		if (rphy->identify.device_type == SAS_END_DEVICE)
			FUNC0(ioc, phy_info);
	}

	phy_info = expander->phy_info;
	for (i = 0; i < expander->num_phys; i++, phy_info++) {
		rphy = FUNC3(phy_info);
		if (!rphy)
			continue;
		if (rphy->identify.device_type ==
		    MPI_SAS_DEVICE_INFO_EDGE_EXPANDER ||
		    rphy->identify.device_type ==
		    MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER) {
			port_info = FUNC2(ioc,
			    rphy->identify.sas_address);
			if (!port_info)
				continue;
			if (port_info == parent) /* backlink rphy */
				continue;
			/*
			Delete this expander even if the expdevpage is exists
			because the parent expander is already deleted
			*/
			FUNC1(ioc, port_info, 1);
		}
	}
}