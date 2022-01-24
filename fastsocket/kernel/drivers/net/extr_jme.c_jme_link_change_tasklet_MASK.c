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
struct net_device {scalar_t__ mtu; } ;
struct jme_adapter {scalar_t__ old_mtu; int /*<<< orphan*/  link_changing; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct jme_adapter*) ; 
 scalar_t__ FUNC13 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct jme_adapter*) ; 
 int FUNC16 (struct jme_adapter*) ; 
 int FUNC17 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct jme_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 scalar_t__ FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC31(unsigned long arg)
{
	struct jme_adapter *jme = (struct jme_adapter *)arg;
	struct net_device *netdev = jme->dev;
	int rc;

	while (!FUNC0(&jme->link_changing)) {
		FUNC1(&jme->link_changing);
		FUNC22(jme, "Get link change lock failed.\n");
		while (FUNC2(&jme->link_changing) != 1)
			FUNC22(jme, "Waiting link change lock.\n");
	}

	if (FUNC4(netdev, 1) && jme->old_mtu == netdev->mtu)
		goto out;

	jme->old_mtu = netdev->mtu;
	FUNC26(netdev);
	if (FUNC13(jme))
		FUNC21(jme);

	FUNC20(jme);
	FUNC27(&jme->txclean_task);
	FUNC27(&jme->rxclean_task);
	FUNC27(&jme->rxempty_task);

	if (FUNC24(netdev)) {
		FUNC14(jme);
		FUNC5(jme);
		FUNC6(jme);
		FUNC15(jme);
		FUNC9(jme);
		FUNC10(jme);

		if (FUNC30(JME_FLAG_POLL, &jme->flags))
			FUNC12(jme);

		FUNC23(netdev);
	}

	FUNC4(netdev, 0);
	if (FUNC24(netdev)) {
		rc = FUNC16(jme);
		if (rc) {
			FUNC3(jme->pdev, "Allocating resources for RX error"
				", Device STOPPED!\n");
			goto out_enable_tasklet;
		}

		rc = FUNC17(jme);
		if (rc) {
			FUNC3(jme->pdev, "Allocating resources for TX error"
				", Device STOPPED!\n");
			goto err_out_free_rx_resources;
		}

		FUNC7(jme);
		FUNC8(jme);

		FUNC25(netdev);

		if (FUNC30(JME_FLAG_POLL, &jme->flags))
			FUNC11(jme);

		FUNC18(jme);
	} else if (FUNC13(jme)) {
		FUNC19(jme);
	}

	goto out_enable_tasklet;

err_out_free_rx_resources:
	FUNC9(jme);
out_enable_tasklet:
	FUNC28(&jme->txclean_task);
	FUNC29(&jme->rxclean_task);
	FUNC29(&jme->rxempty_task);
out:
	FUNC1(&jme->link_changing);
}