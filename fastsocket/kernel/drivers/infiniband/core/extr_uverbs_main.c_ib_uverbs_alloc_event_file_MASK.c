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
struct ib_uverbs_file {int dummy; } ;
struct ib_uverbs_event_file {int is_async; scalar_t__ is_closed; int /*<<< orphan*/ * async_queue; struct ib_uverbs_file* uverbs_file; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  event_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENFILE ; 
 int ENOMEM ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 struct file* FUNC2 (char*,int /*<<< orphan*/ *,struct ib_uverbs_event_file*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uverbs_event_file*) ; 
 struct ib_uverbs_event_file* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_event_fops ; 

struct file *FUNC10(struct ib_uverbs_file *uverbs_file,
					int is_async, int *fd)
{
	struct ib_uverbs_event_file *ev_file;
	struct file *filp;
	int ret;

	ev_file = FUNC6(sizeof *ev_file, GFP_KERNEL);
	if (!ev_file)
		return FUNC0(-ENOMEM);

	FUNC7(&ev_file->ref);
	FUNC9(&ev_file->lock);
	FUNC1(&ev_file->event_list);
	FUNC4(&ev_file->poll_wait);
	ev_file->uverbs_file = uverbs_file;
	ev_file->async_queue = NULL;
	ev_file->is_async    = is_async;
	ev_file->is_closed   = 0;

	*fd = FUNC3();
	if (*fd < 0) {
		ret = *fd;
		goto err;
	}

	filp = FUNC2("[uverbs-event]", &uverbs_event_fops,
				  ev_file, O_RDONLY);
	if (!filp) {
		ret = -ENFILE;
		goto err_fd;
	}

	return filp;

err_fd:
	FUNC8(*fd);

err:
	FUNC5(ev_file);
	return FUNC0(ret);
}