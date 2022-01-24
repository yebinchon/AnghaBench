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
struct TYPE_4__ {TYPE_1__* ccwgdriver; } ;
struct qeth_card {TYPE_2__ discipline; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* complete ) (struct ccwgroup_device*) ;} ;

/* Variables and functions */
 struct qeth_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 

__attribute__((used)) static void FUNC2(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC0(&gdev->dev);
	if (card->discipline.ccwgdriver &&
	    card->discipline.ccwgdriver->complete)
		card->discipline.ccwgdriver->complete(gdev);
}