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
struct tx_ring_info {int dummy; } ;
struct niu {int num_tx_rings; TYPE_1__* dev; struct tx_ring_info* tx_rings; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFUP ; 
 int /*<<< orphan*/  FUNC0 (struct niu*) ; 
 int FUNC1 (struct niu*) ; 
 int FUNC2 (struct niu*) ; 
 int FUNC3 (struct niu*) ; 
 int FUNC4 (struct niu*,struct tx_ring_info*) ; 
 int FUNC5 (struct niu*) ; 
 int FUNC6 (struct niu*) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*) ; 
 int /*<<< orphan*/  FUNC11 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct niu *np)
{
	int i, err;

	FUNC14(IFUP, "%s: Initialize TXC\n", np->dev->name);
	FUNC11(np, 1);
	FUNC12(np, 1);
	FUNC13(np, 0);

	FUNC14(IFUP, "%s: Initialize TX channels\n", np->dev->name);
	for (i = 0; i < np->num_tx_rings; i++) {
		struct tx_ring_info *rp = &np->tx_rings[i];

		err = FUNC4(np, rp);
		if (err)
			return err;
	}

	FUNC14(IFUP, "%s: Initialize RX channels\n", np->dev->name);
	err = FUNC5(np);
	if (err)
		goto out_uninit_tx_channels;

	FUNC14(IFUP, "%s: Initialize classifier\n", np->dev->name);
	err = FUNC1(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC14(IFUP, "%s: Initialize ZCP\n", np->dev->name);
	err = FUNC6(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC14(IFUP, "%s: Initialize IPP\n", np->dev->name);
	err = FUNC2(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC14(IFUP, "%s: Initialize MAC\n", np->dev->name);
	err = FUNC3(np);
	if (err)
		goto out_uninit_ipp;

	return 0;

out_uninit_ipp:
	FUNC14(IFUP, "%s: Uninit IPP\n", np->dev->name);
	FUNC0(np);

out_uninit_rx_channels:
	FUNC14(IFUP, "%s: Uninit RX channels\n", np->dev->name);
	FUNC9(np);
	FUNC7(np);

out_uninit_tx_channels:
	FUNC14(IFUP, "%s: Uninit TX channels\n", np->dev->name);
	FUNC10(np);
	FUNC8(np);

	return err;
}