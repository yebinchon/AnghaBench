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
struct qeth_vlan_vid {unsigned short vid; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {int /*<<< orphan*/  vlanlock; int /*<<< orphan*/  vid_list; TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPA_CMD_SETVLAN ; 
 scalar_t__ QETH_CARD_TYPE_OSM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,unsigned short) ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  TRACE ; 
 struct qeth_vlan_vid* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, unsigned short vid)
{
	struct qeth_card *card = dev->ml_priv;
	struct qeth_vlan_vid *id;

	FUNC1(TRACE, 4, "aid:%d", vid);
	if (!vid)
		return;
	if (card->info.type == QETH_CARD_TYPE_OSM) {
		FUNC0(TRACE, 3, "aidOSM");
		return;
	}
	if (FUNC5(card, QETH_RECOVER_THREAD)) {
		FUNC0(TRACE, 3, "aidREC");
		return;
	}
	id = FUNC2(sizeof(struct qeth_vlan_vid), GFP_ATOMIC);
	if (id) {
		id->vid = vid;
		FUNC4(card, vid, IPA_CMD_SETVLAN);
		FUNC6(&card->vlanlock);
		FUNC3(&id->list, &card->vid_list);
		FUNC7(&card->vlanlock);
	}
}