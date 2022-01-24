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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  mdio_bus; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MC_CMD_MDIO_STATUS_GOOD ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 struct efx_nic* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev,
			   int prtad, int devad, u16 addr)
{
	struct efx_nic *efx = FUNC1(net_dev);
	uint16_t value;
	uint32_t status;
	int rc;

	rc = FUNC0(efx, efx->mdio_bus, prtad, devad,
				addr, &value, &status);
	if (rc)
		return rc;
	if (status != MC_CMD_MDIO_STATUS_GOOD)
		return -EIO;

	return (int)value;
}