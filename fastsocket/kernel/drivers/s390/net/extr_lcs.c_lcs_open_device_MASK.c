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
struct net_device {int /*<<< orphan*/  flags; scalar_t__ ml_priv; } ;
struct lcs_card {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_UP ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	struct lcs_card *card;
	int rc;

	FUNC0(2, trace, "opendev");
	card = (struct lcs_card *) dev->ml_priv;
	/* initialize statistics */
	rc = FUNC1(card);
	if (rc) {
		FUNC4("Error in opening device!\n");

	} else {
		dev->flags |= IFF_UP;
		FUNC2(dev);
		FUNC3(dev);
		card->state = DEV_STATE_UP;
	}
	return rc;
}