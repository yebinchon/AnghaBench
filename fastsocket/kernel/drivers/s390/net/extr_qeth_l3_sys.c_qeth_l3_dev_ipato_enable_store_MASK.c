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
struct TYPE_2__ {int enabled; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_1__ ipato; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_RECOVER ; 
 int EINVAL ; 
 int EPERM ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	char *tmp;
	int rc = 0;

	if (!card)
		return -EINVAL;

	FUNC1(&card->conf_mutex);
	if ((card->state != CARD_STATE_DOWN) &&
	    (card->state != CARD_STATE_RECOVER)) {
		rc = -EPERM;
		goto out;
	}

	tmp = FUNC4((char **) &buf, "\n");
	if (!FUNC3(tmp, "toggle")) {
		card->ipato.enabled = (card->ipato.enabled)? 0 : 1;
	} else if (!FUNC3(tmp, "1")) {
		card->ipato.enabled = 1;
	} else if (!FUNC3(tmp, "0")) {
		card->ipato.enabled = 0;
	} else
		rc = -EINVAL;
out:
	FUNC2(&card->conf_mutex);
	return rc ? rc : count;
}