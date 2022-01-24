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
struct TYPE_2__ {scalar_t__ applid; } ;
struct capidev {int /*<<< orphan*/  list; int /*<<< orphan*/  ncci_list_mtx; int /*<<< orphan*/  recvqueue; TYPE_1__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  capidev_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct capidev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct capidev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct capidev *cdev)
{
	unsigned long flags;

	if (cdev->ap.applid) {
		FUNC0(&cdev->ap);
		cdev->ap.applid = 0;
	}
	FUNC6(&cdev->recvqueue);

	FUNC4(&cdev->ncci_list_mtx);
	FUNC1(cdev, 0xffffffff);
	FUNC5(&cdev->ncci_list_mtx);

	FUNC7(&capidev_list_lock, flags);
	FUNC3(&cdev->list);
	FUNC8(&capidev_list_lock, flags);
	FUNC2(cdev);
}