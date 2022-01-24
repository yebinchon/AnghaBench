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
struct TYPE_2__ {int hwtrap; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 int EINVAL ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRAP ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_ARM ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_CAPTURE ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	int rc = 0;
	char *tmp, *curtoken;
	int state = 0;
	curtoken = (char *)buf;

	if (!card)
		return -EINVAL;

	FUNC1(&card->conf_mutex);
	if (card->state == CARD_STATE_SOFTSETUP || card->state == CARD_STATE_UP)
		state = 1;
	tmp = FUNC6(&curtoken, "\n");

	if (!FUNC5(tmp, "arm") && !card->info.hwtrap) {
		if (state) {
			if (FUNC4(card,
			    QETH_DIAGS_CMD_TRAP)) {
				rc = FUNC3(card, QETH_DIAGS_TRAP_ARM);
				if (!rc)
					card->info.hwtrap = 1;
			} else
				rc = -EINVAL;
		} else
			card->info.hwtrap = 1;
	} else if (!FUNC5(tmp, "disarm") && card->info.hwtrap) {
		if (state) {
			rc = FUNC3(card, QETH_DIAGS_TRAP_DISARM);
			if (!rc)
				card->info.hwtrap = 0;
		} else
			card->info.hwtrap = 0;
	} else if (!FUNC5(tmp, "trap") && state && card->info.hwtrap)
		rc = FUNC3(card, QETH_DIAGS_TRAP_CAPTURE);
	else
		rc = -EINVAL;

	FUNC2(&card->conf_mutex);
	return rc ? rc : count;
}