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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 char* FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);

	if (!card)
		return -EINVAL;

	return FUNC2(buf, "%s checksumming\n",
			FUNC1(card));
}