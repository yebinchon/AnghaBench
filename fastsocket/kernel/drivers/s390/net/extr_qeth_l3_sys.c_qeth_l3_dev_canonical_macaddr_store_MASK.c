#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  macaddr_mode; } ;
struct TYPE_3__ {scalar_t__ link_type; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_2__ options; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_RECOVER ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ QETH_LINK_TYPE_HSTR ; 
 scalar_t__ QETH_LINK_TYPE_LANE_TR ; 
 int /*<<< orphan*/  QETH_TR_MACADDR_CANONICAL ; 
 int /*<<< orphan*/  QETH_TR_MACADDR_NONCANONICAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	char *tmp;
	int i, rc = 0;

	if (!card)
		return -EINVAL;

	FUNC1(&card->conf_mutex);
	if ((card->state != CARD_STATE_DOWN) &&
	    (card->state != CARD_STATE_RECOVER)) {
		rc = -EPERM;
		goto out;
	}

	if (!((card->info.link_type == QETH_LINK_TYPE_HSTR) ||
	      (card->info.link_type == QETH_LINK_TYPE_LANE_TR))) {
		rc = -EINVAL;
		goto out;
	}

	i = FUNC3(buf, &tmp, 16);
	if ((i == 0) || (i == 1))
		card->options.macaddr_mode = i?
			QETH_TR_MACADDR_CANONICAL :
			QETH_TR_MACADDR_NONCANONICAL;
	else
		rc = -EINVAL;
out:
	FUNC2(&card->conf_mutex);
	return rc ? rc : count;
}