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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  addr_len; } ;
struct ks8695_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ks8695_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, void *addr)
{
	struct ks8695_priv *ksp = FUNC4(ndev);
	struct sockaddr *address = addr;

	if (!FUNC1(address->sa_data))
		return -EADDRNOTAVAIL;

	FUNC3(ndev->dev_addr, address->sa_data, ndev->addr_len);

	FUNC2(ksp);

	FUNC0(ksp->dev, "%s: Updated MAC address to %pM\n",
		ndev->name, ndev->dev_addr);

	return 0;
}