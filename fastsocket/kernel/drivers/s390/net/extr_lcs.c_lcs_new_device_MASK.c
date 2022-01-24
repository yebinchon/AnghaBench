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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; struct lcs_card* ml_priv; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ccwdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ccwdev; } ;
struct lcs_card {int state; int lan_type; int ip_assists_supported; TYPE_2__ write; TYPE_1__ read; struct net_device* dev; int /*<<< orphan*/  mac; int /*<<< orphan*/  lan_type_trans; } ;
struct ccwgroup_device {int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dev; } ;
typedef  enum lcs_dev_states { ____Placeholder_lcs_dev_states } lcs_dev_states ;

/* Variables and functions */
 int DEV_STATE_RECOVER ; 
 int DEV_STATE_UP ; 
 int ENODEV ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
#define  LCS_FRAME_TYPE_ENET 130 
#define  LCS_FRAME_TYPE_FDDI 129 
#define  LCS_FRAME_TYPE_TR 128 
 int LCS_IPASS_IPV6_SUPPORT ; 
 int LCS_IPASS_MULTICAST_SUPPORT ; 
 int /*<<< orphan*/  LCS_MAC_LENGTH ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct lcs_card* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eth_type_trans ; 
 int /*<<< orphan*/  fddi_type_trans ; 
 int /*<<< orphan*/  FUNC9 (struct lcs_card*) ; 
 int FUNC10 (struct lcs_card*) ; 
 int /*<<< orphan*/  lcs_mc_netdev_ops ; 
 int /*<<< orphan*/  lcs_netdev_ops ; 
 scalar_t__ FUNC11 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct lcs_card*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC15 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  tr_type_trans ; 

__attribute__((used)) static int
FUNC21(struct ccwgroup_device *ccwgdev)
{
	struct  lcs_card *card;
	struct net_device *dev=NULL;
	enum lcs_dev_states recover_state;
	int rc;

	card = FUNC8(&ccwgdev->dev);
	if (!card)
		return -ENODEV;

	FUNC1(2, setup, "newdev");
	FUNC0(3, setup, &card, sizeof(void*));
	card->read.ccwdev  = ccwgdev->cdev[0];
	card->write.ccwdev = ccwgdev->cdev[1];

	recover_state = card->state;
	FUNC6(card->read.ccwdev);
	FUNC6(card->write.ccwdev);

	FUNC1(3, setup, "lcsnewdv");

	FUNC14(card);
	rc = FUNC10(card);
	if (rc) {
		FUNC1(2, setup, "dtctfail");
		FUNC7(&card->dev->dev,
			"Detecting a network adapter for LCS devices"
			" failed with rc=%d (0x%x)\n", rc, rc);
		FUNC15(card);
		goto out;
	}
	if (card->dev) {
		FUNC1(2, setup, "samedev");
		FUNC0(3, setup, &card, sizeof(void*));
		goto netdev_out;
	}
	switch (card->lan_type) {
#ifdef CONFIG_NET_ETHERNET
	case LCS_FRAME_TYPE_ENET:
		card->lan_type_trans = eth_type_trans;
		dev = alloc_etherdev(0);
		break;
#endif
#ifdef CONFIG_TR
	case LCS_FRAME_TYPE_TR:
		card->lan_type_trans = tr_type_trans;
		dev = alloc_trdev(0);
		break;
#endif
#ifdef CONFIG_FDDI
	case LCS_FRAME_TYPE_FDDI:
		card->lan_type_trans = fddi_type_trans;
		dev = alloc_fddidev(0);
		break;
#endif
	default:
		FUNC1(3, setup, "errinit");
		FUNC19(" Initialization failed\n");
		goto out;
	}
	if (!dev)
		goto out;
	card->dev = dev;
	card->dev->ml_priv = card;
	card->dev->netdev_ops = &lcs_netdev_ops;
	FUNC16(card->dev->dev_addr, card->mac, LCS_MAC_LENGTH);
#ifdef CONFIG_IP_MULTICAST
	if (!lcs_check_multicast_support(card))
		card->dev->netdev_ops = &lcs_mc_netdev_ops;
#endif
netdev_out:
	FUNC12(card,0xffffffff);
	if (recover_state == DEV_STATE_RECOVER) {
		FUNC13(card->dev);
		card->dev->flags |= IFF_UP;
		FUNC17(card->dev);
		FUNC18(card->dev);
		card->state = DEV_STATE_UP;
	} else {
		FUNC15(card);
	}

	if (FUNC11(ccwgdev) != 0)
		goto out;

	/* Print out supported assists: IPv6 */
	FUNC20("LCS device %s %s IPv6 support\n", card->dev->name,
		(card->ip_assists_supported & LCS_IPASS_IPV6_SUPPORT) ?
		"with" : "without");
	/* Print out supported assist: Multicast */
	FUNC20("LCS device %s %s Multicast support\n", card->dev->name,
		(card->ip_assists_supported & LCS_IPASS_MULTICAST_SUPPORT) ?
		"with" : "without");
	return 0;
out:

	FUNC5(card->read.ccwdev);
	FUNC5(card->write.ccwdev);
	return -ENODEV;
}