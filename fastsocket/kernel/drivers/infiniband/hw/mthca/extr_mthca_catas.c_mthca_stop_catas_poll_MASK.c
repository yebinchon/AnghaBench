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
struct TYPE_2__ {int /*<<< orphan*/  list; scalar_t__ map; int /*<<< orphan*/  timer; } ;
struct mthca_dev {TYPE_1__ catas_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  catas_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mthca_dev *dev)
{
	FUNC0(&dev->catas_err.timer);

	if (dev->catas_err.map)
		FUNC1(dev->catas_err.map);

	FUNC3(&catas_lock);
	FUNC2(&dev->catas_err.list);
	FUNC4(&catas_lock);
}