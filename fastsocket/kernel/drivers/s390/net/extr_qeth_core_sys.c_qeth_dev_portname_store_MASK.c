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
struct TYPE_2__ {int* portname; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_RECOVER ; 
 int EINVAL ; 
 int EPERM ; 
 struct qeth_card* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC1(dev);
	char *tmp;
	int i, rc = 0;

	if (!card)
		return -EINVAL;

	FUNC2(&card->conf_mutex);
	if ((card->state != CARD_STATE_DOWN) &&
	    (card->state != CARD_STATE_RECOVER)) {
		rc = -EPERM;
		goto out;
	}

	tmp = FUNC6((char **) &buf, "\n");
	if ((FUNC5(tmp) > 8) || (FUNC5(tmp) == 0)) {
		rc = -EINVAL;
		goto out;
	}

	card->info.portname[0] = FUNC5(tmp);
	/* for beauty reasons */
	for (i = 1; i < 9; i++)
		card->info.portname[i] = ' ';
	FUNC4(card->info.portname + 1, tmp);
	FUNC0(card->info.portname + 1, 8);
out:
	FUNC3(&card->conf_mutex);
	return rc ? rc : count;
}