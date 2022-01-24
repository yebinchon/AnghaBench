#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* hw_lock; int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  user_waiters; int /*<<< orphan*/  lock_time; struct drm_file* file_priv; } ;
struct drm_master {TYPE_3__ lock; } ;
struct drm_lock {scalar_t__ context; int flags; } ;
struct drm_file {int /*<<< orphan*/  is_master; int /*<<< orphan*/  lock_count; struct drm_master* master; } ;
struct TYPE_8__ {scalar_t__ context; TYPE_1__* lock; } ;
struct drm_device {TYPE_2__* driver; int /*<<< orphan*/  sigmask; TYPE_4__ sigdata; int /*<<< orphan*/ * counts; } ;
struct TYPE_6__ {scalar_t__ (* dma_quiescent ) (struct drm_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_KERNEL_CONTEXT ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int _DRM_LOCK_QUIESCENT ; 
 size_t _DRM_STAT_LOCKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  drm_notifier ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	FUNC0(entry, current);
	struct drm_lock *lock = data;
	struct drm_master *master = file_priv->master;
	int ret = 0;

	++file_priv->lock_count;

	if (lock->context == DRM_KERNEL_CONTEXT) {
		FUNC2("Process %d using kernel context %d\n",
			  FUNC19(current), lock->context);
		return -EINVAL;
	}

	FUNC1("%d (pid %d) requests lock (0x%08x), flags = 0x%08x\n",
		  lock->context, FUNC19(current),
		  master->lock.hw_lock->lock, lock->flags);

	FUNC4(&master->lock.lock_queue, &entry);
	FUNC16(&master->lock.spinlock);
	master->lock.user_waiters++;
	FUNC17(&master->lock.spinlock);

	for (;;) {
		FUNC3(TASK_INTERRUPTIBLE);
		if (!master->lock.hw_lock) {
			/* Device has been unregistered */
			FUNC12(SIGTERM, current, 0);
			ret = -EINTR;
			break;
		}
		if (FUNC7(&master->lock, lock->context)) {
			master->lock.file_priv = file_priv;
			master->lock.lock_time = jiffies;
			FUNC5(&dev->counts[_DRM_STAT_LOCKS]);
			break;	/* Got lock */
		}

		/* Contention */
		FUNC9(&drm_global_mutex);
		FUNC11();
		FUNC8(&drm_global_mutex);
		if (FUNC15(current)) {
			ret = -EINTR;
			break;
		}
	}
	FUNC16(&master->lock.spinlock);
	master->lock.user_waiters--;
	FUNC17(&master->lock.spinlock);
	FUNC3(TASK_RUNNING);
	FUNC10(&master->lock.lock_queue, &entry);

	FUNC1("%d %s\n", lock->context,
		  ret ? "interrupted" : "has lock");
	if (ret) return ret;

	/* don't set the block all signals on the master process for now 
	 * really probably not the correct answer but lets us debug xkb
 	 * xserver for now */
	if (!file_priv->is_master) {
		FUNC14(&dev->sigmask);
		FUNC13(&dev->sigmask, SIGSTOP);
		FUNC13(&dev->sigmask, SIGTSTP);
		FUNC13(&dev->sigmask, SIGTTIN);
		FUNC13(&dev->sigmask, SIGTTOU);
		dev->sigdata.context = lock->context;
		dev->sigdata.lock = master->lock.hw_lock;
		FUNC6(drm_notifier, &dev->sigdata, &dev->sigmask);
	}

	if (dev->driver->dma_quiescent && (lock->flags & _DRM_LOCK_QUIESCENT))
	{
		if (dev->driver->dma_quiescent(dev)) {
			FUNC1("%d waiting for DMA quiescent\n",
				  lock->context);
			return -EBUSY;
		}
	}

	return 0;
}