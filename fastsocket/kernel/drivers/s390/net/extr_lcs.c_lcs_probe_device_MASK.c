#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lcs_card {scalar_t__ thread_running_mask; scalar_t__ thread_allowed_mask; scalar_t__ thread_start_mask; int /*<<< orphan*/  kernel_thread_starter; struct ccwgroup_device* gdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {TYPE_1__** cdev; TYPE_2__ dev; } ;
struct TYPE_5__ {void* handler; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct lcs_card* FUNC5 () ; 
 int /*<<< orphan*/  lcs_attr_group ; 
 int /*<<< orphan*/  FUNC6 (struct lcs_card*) ; 
 void* lcs_irq ; 
 int /*<<< orphan*/  lcs_start_kernel_thread ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  setup ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct ccwgroup_device *ccwgdev)
{
	struct lcs_card *card;
	int ret;

	if (!FUNC4(&ccwgdev->dev))
		return -ENODEV;

	FUNC1(2, setup, "add_dev");
        card = FUNC5();
        if (!card) {
		FUNC2(2, setup, "  rc%d", -ENOMEM);
		FUNC7(&ccwgdev->dev);
                return -ENOMEM;
        }
	ret = FUNC8(&ccwgdev->dev.kobj, &lcs_attr_group);
	if (ret) {
		FUNC6(card);
		FUNC7(&ccwgdev->dev);
		return ret;
        }
	FUNC3(&ccwgdev->dev, card);
	ccwgdev->cdev[0]->handler = lcs_irq;
	ccwgdev->cdev[1]->handler = lcs_irq;
	card->gdev = ccwgdev;
	FUNC0(&card->kernel_thread_starter, lcs_start_kernel_thread);
	card->thread_start_mask = 0;
	card->thread_allowed_mask = 0;
	card->thread_running_mask = 0;
        return 0;
}