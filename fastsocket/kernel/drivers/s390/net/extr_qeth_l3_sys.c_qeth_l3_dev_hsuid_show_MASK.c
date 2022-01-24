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
typedef  int /*<<< orphan*/  tmp_hsuid ;
struct TYPE_4__ {int /*<<< orphan*/  hsuid; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ options; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 struct qeth_card* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC1(dev);
	char tmp_hsuid[9];

	if (!card)
		return -EINVAL;

	if (card->info.type != QETH_CARD_TYPE_IQD)
		return -EPERM;

	if (card->state == CARD_STATE_DOWN)
		return -EPERM;

	FUNC2(tmp_hsuid, card->options.hsuid, sizeof(tmp_hsuid));
	FUNC0(tmp_hsuid, 8);
	return FUNC3(buf, "%s\n", tmp_hsuid);
}