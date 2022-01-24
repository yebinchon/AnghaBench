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
struct qeth_card {int dummy; } ;
struct net_device {int mtu; struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPA_IP_FRAGMENTATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4(struct net_device *dev, int new_mtu)
{
	struct qeth_card *card;
	char dbf_text[15];

	card = dev->ml_priv;

	FUNC0(TRACE, 4, "chgmtu");
	FUNC3(dbf_text, "%8x", new_mtu);
	FUNC0(TRACE, 4, dbf_text);

	if (new_mtu < 64)
		return -EINVAL;
	if (new_mtu > 65535)
		return -EINVAL;
	if ((!FUNC1(card, IPA_IP_FRAGMENTATION)) &&
	    (!FUNC2(card, new_mtu)))
		return -EINVAL;
	dev->mtu = new_mtu;
	return 0;
}