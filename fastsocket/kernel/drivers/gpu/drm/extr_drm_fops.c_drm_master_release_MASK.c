#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* master; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* hw_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_3__ lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev, struct file *filp)
{
	struct drm_file *file_priv = filp->private_data;

	if (FUNC2(dev, file_priv)) {
		FUNC0("File %p released, freeing lock for context %d\n",
			  filp, FUNC1(file_priv->master->lock.hw_lock->lock));
		FUNC3(&file_priv->master->lock,
			      FUNC1(file_priv->master->lock.hw_lock->lock));
	}
}