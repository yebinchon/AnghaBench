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
struct qeth_card {int state; int /*<<< orphan*/  lan_online; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  CARD_STATE_DOWN 132 
#define  CARD_STATE_HARDSETUP 131 
#define  CARD_STATE_RECOVER 130 
#define  CARD_STATE_SOFTSETUP 129 
#define  CARD_STATE_UP 128 
 int /*<<< orphan*/  EINVAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);
	if (!card)
		return -EINVAL;

	switch (card->state) {
	case CARD_STATE_DOWN:
		return FUNC1(buf, "DOWN\n");
	case CARD_STATE_HARDSETUP:
		return FUNC1(buf, "HARDSETUP\n");
	case CARD_STATE_SOFTSETUP:
		return FUNC1(buf, "SOFTSETUP\n");
	case CARD_STATE_UP:
		if (card->lan_online)
		return FUNC1(buf, "UP (LAN ONLINE)\n");
		else
			return FUNC1(buf, "UP (LAN OFFLINE)\n");
	case CARD_STATE_RECOVER:
		return FUNC1(buf, "RECOVER\n");
	default:
		return FUNC1(buf, "UNKNOWN\n");
	}
}