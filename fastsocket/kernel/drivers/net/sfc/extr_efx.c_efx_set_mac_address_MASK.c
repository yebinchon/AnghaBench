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
struct sockaddr {char* sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reconfigure_mac ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC8(struct net_device *net_dev, void *data)
{
	struct efx_nic *efx = FUNC5(net_dev);
	struct sockaddr *addr = data;
	char *new_addr = addr->sa_data;

	if (!FUNC1(new_addr)) {
		FUNC6(efx, drv, efx->net_dev,
			  "invalid ethernet MAC address requested: %pM\n",
			  new_addr);
		return -EINVAL;
	}

	FUNC2(net_dev->dev_addr, new_addr, net_dev->addr_len);
	FUNC0(efx);

	/* Reconfigure the MAC */
	FUNC3(&efx->mac_lock);
	efx->type->reconfigure_mac(efx);
	FUNC4(&efx->mac_lock);

	return 0;
}