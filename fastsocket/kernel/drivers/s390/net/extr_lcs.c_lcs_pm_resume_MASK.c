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
struct lcs_card {scalar_t__ state; TYPE_1__* gdev; scalar_t__ dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct lcs_card *card)
{
	int rc = 0;

	if (card->state == DEV_STATE_RECOVER)
		rc = FUNC1(card->gdev);
	if (card->dev)
		FUNC2(card->dev);
	if (rc) {
		FUNC0(&card->gdev->dev, "The lcs device driver "
			"failed to recover the device\n");
	}
	return rc;
}