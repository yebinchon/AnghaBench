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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_FILTER_PRI_MANUAL ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 129 
#define  ETHTOOL_SRXCLSRLINS 128 
 int FUNC0 (struct efx_nic*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct efx_nic* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net_dev,
				 struct ethtool_rxnfc *info)
{
	struct efx_nic *efx = FUNC3(net_dev);

	if (FUNC1(efx) == 0)
		return -EOPNOTSUPP;

	switch (info->cmd) {
	case ETHTOOL_SRXCLSRLINS:
		return FUNC0(efx, &info->fs);

	case ETHTOOL_SRXCLSRLDEL:
		return FUNC2(efx, EFX_FILTER_PRI_MANUAL,
						 info->fs.location);

	default:
		return -EOPNOTSUPP;
	}
}