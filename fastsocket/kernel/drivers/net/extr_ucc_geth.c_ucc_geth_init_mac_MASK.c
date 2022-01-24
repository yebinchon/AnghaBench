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
struct ucc_geth_private {TYPE_1__* ug_regs; struct net_device* ndev; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  macstnaddr2; int /*<<< orphan*/  macstnaddr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_DIR_RX_AND_TX ; 
 int FUNC0 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ucc_geth_private*) ; 
 int FUNC3 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucc_geth_private*) ; 
 int FUNC5 (struct ucc_geth_private*) ; 
 int FUNC6 (struct ucc_geth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ucc_geth_private *ugeth)
{
	struct net_device *dev = ugeth->ndev;
	int err;

	err = FUNC5(ugeth);
	if (err) {
		if (FUNC2(ugeth))
			FUNC7("%s: Cannot configure internal struct, "
				  "aborting.", dev->name);
		goto err;
	}

	err = FUNC3(ugeth);
	if (err) {
		if (FUNC2(ugeth))
			FUNC7("%s: Cannot configure net device, aborting.",
				  dev->name);
		goto err;
	}

	err = FUNC0(ugeth);
	if (err) {
		if (FUNC2(ugeth))
			FUNC7("%s: Cannot configure net device, aborting.",
				  dev->name);
		goto err;
	}

	/*       Set MACSTNADDR1, MACSTNADDR2                */
	/* For more details see the hardware spec.           */
	FUNC1(dev->dev_addr[0],
				   dev->dev_addr[1],
				   dev->dev_addr[2],
				   dev->dev_addr[3],
				   dev->dev_addr[4],
				   dev->dev_addr[5],
				   &ugeth->ug_regs->macstnaddr1,
				   &ugeth->ug_regs->macstnaddr2);

	err = FUNC6(ugeth, COMM_DIR_RX_AND_TX);
	if (err) {
		if (FUNC2(ugeth))
			FUNC7("%s: Cannot enable net device, aborting.", dev->name);
		goto err;
	}

	return 0;
err:
	FUNC4(ugeth);
	return err;
}