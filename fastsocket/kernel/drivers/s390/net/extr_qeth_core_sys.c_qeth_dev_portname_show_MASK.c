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
struct TYPE_2__ {scalar_t__ portname; scalar_t__ portname_required; } ;
struct qeth_card {TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct qeth_card* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC1(dev);
	char portname[9] = {0, };

	if (!card)
		return -EINVAL;

	if (card->info.portname_required) {
		FUNC2(portname, card->info.portname + 1, 8);
		FUNC0(portname, 8);
		return FUNC3(buf, "%s\n", portname);
	} else
		return FUNC3(buf, "no portname required\n");
}