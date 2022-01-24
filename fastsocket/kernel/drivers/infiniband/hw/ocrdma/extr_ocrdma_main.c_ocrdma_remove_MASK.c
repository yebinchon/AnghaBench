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
struct ocrdma_dev {int /*<<< orphan*/  rcu; int /*<<< orphan*/  entry; int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocrdma_devlist_lock ; 
 int /*<<< orphan*/  ocrdma_remove_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ocrdma_dev *dev)
{
	/* first unregister with stack to stop all the active traffic
	 * of the registered clients.
	 */
	FUNC1(&dev->ibdev);

	FUNC3(&ocrdma_devlist_lock);
	FUNC2(&dev->entry);
	FUNC4(&ocrdma_devlist_lock);
	FUNC0(&dev->rcu, ocrdma_remove_free);
}