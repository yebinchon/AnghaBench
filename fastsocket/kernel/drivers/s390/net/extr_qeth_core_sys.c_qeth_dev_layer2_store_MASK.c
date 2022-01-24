#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* ccwgdriver; } ;
struct TYPE_6__ {scalar_t__ mac_bits; } ;
struct TYPE_5__ {int layer2; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  gdev; TYPE_4__ discipline; TYPE_2__ info; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_7__ {int (* probe ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int EINVAL ; 
 int EPERM ; 
 int QETH_DISCIPLINE_LAYER2 ; 
 int QETH_DISCIPLINE_LAYER3 ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int FUNC4 (struct qeth_card*,int) ; 
 int FUNC5 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	char *tmp;
	int i, rc = 0;
	enum qeth_discipline_id newdis;

	if (!card)
		return -EINVAL;

	FUNC1(&card->discipline_mutex);
	if (card->state != CARD_STATE_DOWN) {
		rc = -EPERM;
		goto out;
	}

	i = FUNC5(buf, &tmp, 16);
	switch (i) {
	case 0:
		newdis = QETH_DISCIPLINE_LAYER3;
		break;
	case 1:
		newdis = QETH_DISCIPLINE_LAYER2;
		break;
	default:
		rc = -EINVAL;
		goto out;
	}

	if (card->options.layer2 == newdis)
		goto out;
	else {
		card->info.mac_bits  = 0;
		if (card->discipline.ccwgdriver) {
			card->discipline.ccwgdriver->remove(card->gdev);
			FUNC3(card);
		}
	}

	rc = FUNC4(card, newdis);
	if (rc)
		goto out;

	rc = card->discipline.ccwgdriver->probe(card->gdev);
out:
	FUNC2(&card->discipline_mutex);
	return rc ? rc : count;
}