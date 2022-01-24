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
struct qeth_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  vlanlock; int /*<<< orphan*/  vlangrp; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,unsigned short) ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, unsigned short vid)
{
	struct qeth_card *card = dev->ml_priv;
	unsigned long flags;

	FUNC1(TRACE, 4, "kid:%d", vid);
	if (FUNC4(card, QETH_RECOVER_THREAD)) {
		FUNC0(TRACE, 3, "kidREC");
		return;
	}
	FUNC5(&card->vlanlock, flags);
	/* unregister IP addresses of vlan device */
	FUNC2(card, vid);
	FUNC7(card->vlangrp, vid, NULL);
	FUNC6(&card->vlanlock, flags);
	FUNC3(card->dev);
}