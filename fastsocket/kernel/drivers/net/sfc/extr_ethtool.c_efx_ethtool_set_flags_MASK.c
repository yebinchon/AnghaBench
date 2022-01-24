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
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int offload_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_FILTER_PRI_MANUAL ; 
 int EINVAL ; 
 int ETH_FLAG_NTUPLE ; 
 int ETH_FLAG_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int) ; 
 struct efx_nic* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *net_dev, u32 data)
{
	struct efx_nic *efx = FUNC2(net_dev);
	u32 supported = (efx->type->offload_features &
			 (ETH_FLAG_RXHASH | ETH_FLAG_NTUPLE));
	int rc;

	if (data & ~supported)
		rc = -EINVAL;
	else
		rc = FUNC1(net_dev, data);
	if (rc)
		return rc;

	if (!(data & ETH_FLAG_NTUPLE))
		FUNC0(efx, EFX_FILTER_PRI_MANUAL);

	return 0;
}