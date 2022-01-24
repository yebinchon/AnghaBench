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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_4__ {TYPE_1__* rom; } ;
struct hpsb_host {int node_count; int* speed; TYPE_2__ csr; } ;
struct eth1394_priv {int bc_maxpayload; int bc_sspd; int /*<<< orphan*/  lock; int /*<<< orphan*/  ud_list; struct hpsb_host* host; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bus_info_data; } ;

/* Variables and functions */
 int IEEE1394_SPEED_100 ; 
 int IEEE1394_SPEED_MAX ; 
 int SELFID_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct eth1394_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, int set_mtu)
{
	unsigned long flags;
	int i;
	struct eth1394_priv *priv = FUNC5(dev);
	struct hpsb_host *host = priv->host;
	u64 guid = FUNC1((u64 *)&(host->csr.rom->bus_info_data[3]));
	int max_speed = IEEE1394_SPEED_MAX;

	FUNC6(&priv->lock, flags);

	FUNC3(priv->ud_list, 0, sizeof(priv->ud_list));
	priv->bc_maxpayload = 512;

	/* Determine speed limit */
	/* FIXME: This is broken for nodes with link speed < PHY speed,
	 * and it is suboptimal for S200B...S800B hardware.
	 * The result of nodemgr's speed probe should be used somehow. */
	for (i = 0; i < host->node_count; i++) {
		/* take care of S100B...S400B PHY ports */
		if (host->speed[i] == SELFID_SPEED_UNKNOWN) {
			max_speed = IEEE1394_SPEED_100;
			break;
		}
		if (max_speed > host->speed[i])
			max_speed = host->speed[i];
	}
	priv->bc_sspd = max_speed;

	if (set_mtu) {
		/* Use the RFC 2734 default 1500 octets or the maximum payload
		 * as initial MTU */
		dev->mtu = FUNC4(1500, FUNC0(host));

		/* Set our hardware address while we're at it */
		FUNC2(dev->dev_addr, &guid, sizeof(u64));
		FUNC3(dev->broadcast, 0xff, sizeof(u64));
	}

	FUNC7(&priv->lock, flags);
}