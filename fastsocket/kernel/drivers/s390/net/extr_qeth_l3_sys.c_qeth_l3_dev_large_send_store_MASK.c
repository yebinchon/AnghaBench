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
struct TYPE_2__ {int large_send; } ;
struct qeth_card {int /*<<< orphan*/  conf_mutex; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum qeth_large_send_types { ____Placeholder_qeth_large_send_types } qeth_large_send_types ;

/* Variables and functions */
 int EINVAL ; 
 int QETH_LARGE_SEND_NO ; 
 int QETH_LARGE_SEND_TSO ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	enum qeth_large_send_types type;
	int rc = 0;
	char *tmp;

	if (!card)
		return -EINVAL;
	tmp = FUNC5((char **) &buf, "\n");
	if (!FUNC4(tmp, "no"))
		type = QETH_LARGE_SEND_NO;
	else if (!FUNC4(tmp, "TSO"))
		type = QETH_LARGE_SEND_TSO;
	else
		return -EINVAL;

	FUNC1(&card->conf_mutex);
	if (card->options.large_send != type)
		rc = FUNC3(card, type);
	FUNC2(&card->conf_mutex);
	return rc ? rc : count;
}