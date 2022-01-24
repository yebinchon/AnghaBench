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
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  napi; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct qeth_card *card = dev->ml_priv;

	FUNC0(TRACE, 4, "qethstop");
	FUNC2(dev);
	if (card->state == CARD_STATE_UP) {
		card->state = CARD_STATE_SOFTSETUP;
		FUNC1(&card->napi);
	}
	return 0;
}