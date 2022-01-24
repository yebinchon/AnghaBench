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
struct TYPE_4__ {void* ccwgdriver; } ;
struct qeth_card {TYPE_1__* gdev; TYPE_2__ discipline; } ;
typedef  enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  QETH_DISCIPLINE_LAYER2 129 
#define  QETH_DISCIPLINE_LAYER3 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_l2_ccwgroup_driver ; 
 int /*<<< orphan*/  qeth_l3_ccwgroup_driver ; 
 int /*<<< orphan*/  qeth_mod_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct qeth_card *card,
		enum qeth_discipline_id discipline)
{
	int rc = 0;
	FUNC1(&qeth_mod_mutex);
	switch (discipline) {
	case QETH_DISCIPLINE_LAYER3:
		card->discipline.ccwgdriver = FUNC4(
			FUNC3(qeth_l3_ccwgroup_driver),
			"qeth_l3");
		break;
	case QETH_DISCIPLINE_LAYER2:
		card->discipline.ccwgdriver = FUNC4(
			FUNC3(qeth_l2_ccwgroup_driver),
			"qeth_l2");
		break;
	}
	if (!card->discipline.ccwgdriver) {
		FUNC0(&card->gdev->dev, "There is no kernel module to "
			"support discipline %d\n", discipline);
		rc = -EINVAL;
	}
	FUNC2(&qeth_mod_mutex);
	return rc;
}