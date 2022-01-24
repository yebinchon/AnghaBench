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
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct qeth_card* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct qeth_card *FUNC1(struct ccw_device *cdev)
{
	struct qeth_card *card = FUNC0(&((struct ccwgroup_device *)
		FUNC0(&cdev->dev))->dev);
	return card;
}