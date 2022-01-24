#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct dasd_device {TYPE_1__ profile; int /*<<< orphan*/  state_mutex; void* target; void* state; int /*<<< orphan*/  reload_device; int /*<<< orphan*/  restore_device; int /*<<< orphan*/  kick_work; TYPE_2__ timer; int /*<<< orphan*/  ccw_queue; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  tasklet_scheduled; int /*<<< orphan*/  mem_lock; void* erp_mem; int /*<<< orphan*/  erp_chunks; void* ccw_mem; int /*<<< orphan*/  ccw_chunks; } ;

/* Variables and functions */
 void* DASD_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ dasd_device_tasklet ; 
 int /*<<< orphan*/  dasd_device_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  do_kick_device ; 
 int /*<<< orphan*/  do_reload_device ; 
 int /*<<< orphan*/  do_restore_device ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*) ; 
 struct dasd_device* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

struct dasd_device *FUNC14(void)
{
	struct dasd_device *device;

	device = FUNC10(sizeof(struct dasd_device), GFP_ATOMIC);
	if (!device)
		return FUNC0(-ENOMEM);

	/* Get two pages for normal block device operations. */
	device->ccw_mem = (void *) FUNC3(GFP_ATOMIC | GFP_DMA, 1);
	if (!device->ccw_mem) {
		FUNC9(device);
		return FUNC0(-ENOMEM);
	}
	/* Get one page for error recovery. */
	device->erp_mem = (void *) FUNC7(GFP_ATOMIC | GFP_DMA);
	if (!device->erp_mem) {
		FUNC6((unsigned long) device->ccw_mem, 1);
		FUNC9(device);
		return FUNC0(-ENOMEM);
	}

	FUNC5(&device->ccw_chunks, device->ccw_mem, PAGE_SIZE*2);
	FUNC5(&device->erp_chunks, device->erp_mem, PAGE_SIZE);
	FUNC12(&device->mem_lock);
	FUNC4(&device->tasklet_scheduled, 0);
	FUNC13(&device->tasklet,
		     (void (*)(unsigned long)) dasd_device_tasklet,
		     (unsigned long) device);
	FUNC1(&device->ccw_queue);
	FUNC8(&device->timer);
	device->timer.function = dasd_device_timeout;
	device->timer.data = (unsigned long) device;
	FUNC2(&device->kick_work, do_kick_device);
	FUNC2(&device->restore_device, do_restore_device);
	FUNC2(&device->reload_device, do_reload_device);
	device->state = DASD_STATE_NEW;
	device->target = DASD_STATE_NEW;
	FUNC11(&device->state_mutex);
	FUNC12(&device->profile.lock);
	return device;
}