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
struct capidev {int /*<<< orphan*/  list; int /*<<< orphan*/  recvwait; int /*<<< orphan*/  recvqueue; int /*<<< orphan*/  ncci_list_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  capidev_list ; 
 int /*<<< orphan*/  capidev_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct capidev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct capidev *FUNC7(void)
{
	struct capidev *cdev;
	unsigned long flags;

	cdev = FUNC1(sizeof(*cdev), GFP_KERNEL);
	if (!cdev)
		return NULL;

	FUNC3(&cdev->ncci_list_mtx);
	FUNC4(&cdev->recvqueue);
	FUNC0(&cdev->recvwait);
	FUNC5(&capidev_list_lock, flags);
	FUNC2(&cdev->list, &capidev_list);
	FUNC6(&capidev_list_lock, flags);
        return cdev;
}