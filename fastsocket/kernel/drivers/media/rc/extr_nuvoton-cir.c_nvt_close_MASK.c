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
struct rc_dev {struct nvt_dev* priv; } ;
struct nvt_dev {int in_use; int /*<<< orphan*/  nvt_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct rc_dev *dev)
{
	struct nvt_dev *nvt = dev->priv;
	unsigned long flags;

	FUNC1(&nvt->nvt_lock, flags);
	nvt->in_use = false;
	FUNC0(nvt);
	FUNC2(&nvt->nvt_lock, flags);
}