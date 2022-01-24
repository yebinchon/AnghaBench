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
struct fcoe_fcf_device {struct fcoe_fcf* priv; scalar_t__ selected; int /*<<< orphan*/  fka_period; int /*<<< orphan*/  priority; int /*<<< orphan*/  mac; int /*<<< orphan*/  vfid; int /*<<< orphan*/  fc_map; int /*<<< orphan*/  switch_name; int /*<<< orphan*/  fabric_name; } ;
struct fcoe_fcf {int /*<<< orphan*/  list; struct fcoe_fcf_device* fcf_dev; int /*<<< orphan*/  fka_period; int /*<<< orphan*/  pri; int /*<<< orphan*/  fcf_mac; int /*<<< orphan*/  vfid; int /*<<< orphan*/  fc_map; int /*<<< orphan*/  switch_name; int /*<<< orphan*/  fabric_name; struct fcoe_ctlr* fip; } ;
struct fcoe_ctlr_device {int /*<<< orphan*/  lock; } ;
struct fcoe_ctlr {int /*<<< orphan*/  fcf_count; int /*<<< orphan*/  fcfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fcoe_fcf*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fcoe_ctlr_device* FUNC2 (struct fcoe_ctlr*) ; 
 struct fcoe_fcf_device* FUNC3 (struct fcoe_ctlr_device*,struct fcoe_fcf_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct fcoe_fcf *new)
{
	struct fcoe_ctlr *fip = new->fip;
	struct fcoe_ctlr_device *ctlr_dev;
	struct fcoe_fcf_device temp, *fcf_dev;
	int rc = 0;

	FUNC1(fip, "New FCF fab %16.16llx mac %pM\n",
			new->fabric_name, new->fcf_mac);

	temp.fabric_name = new->fabric_name;
	temp.switch_name = new->switch_name;
	temp.fc_map = new->fc_map;
	temp.vfid = new->vfid;
	FUNC5(temp.mac, new->fcf_mac, ETH_ALEN);
	temp.priority = new->pri;
	temp.fka_period = new->fka_period;
	temp.selected = 0; /* default to unselected */

	/*
	 * If ctlr_dev doesn't exist then it means we're a libfcoe user
	 * who doesn't use fcoe_syfs and didn't allocate a fcoe_ctlr_device.
	 * fnic would be an example of a driver with this behavior. In this
	 * case we want to add the fcoe_fcf to the fcoe_ctlr list, but we
	 * don't want to make sysfs changes.
	 */
	ctlr_dev = FUNC2(fip);
	if (ctlr_dev) {
		FUNC6(&ctlr_dev->lock);
		fcf_dev = FUNC3(ctlr_dev, &temp);
		if (FUNC8(!fcf_dev)) {
			rc = -ENOMEM;
			FUNC7(&ctlr_dev->lock);
			goto out;
		}

		/*
		 * The fcoe_sysfs layer can return a CONNECTED fcf that
		 * has a priv (fcf was never deleted) or a CONNECTED fcf
		 * that doesn't have a priv (fcf was deleted). However,
		 * libfcoe will always delete FCFs before trying to add
		 * them. This is ensured because both recv_adv and
		 * age_fcfs are protected by the the fcoe_ctlr's mutex.
		 * This means that we should never get a FCF with a
		 * non-NULL priv pointer.
		 */
		FUNC0(fcf_dev->priv);

		fcf_dev->priv = new;
		new->fcf_dev = fcf_dev;
		FUNC7(&ctlr_dev->lock);
	}

	FUNC4(&new->list, &fip->fcfs);
	fip->fcf_count++;

out:
	return rc;
}