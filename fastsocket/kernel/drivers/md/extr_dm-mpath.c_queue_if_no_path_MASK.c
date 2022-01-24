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
struct multipath {unsigned int saved_queue_if_no_path; unsigned int queue_if_no_path; int /*<<< orphan*/  lock; int /*<<< orphan*/  process_queued_ios; scalar_t__ queue_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct multipath *m, unsigned queue_if_no_path,
			    unsigned save_old_value)
{
	unsigned long flags;

	FUNC1(&m->lock, flags);

	if (save_old_value)
		m->saved_queue_if_no_path = m->queue_if_no_path;
	else
		m->saved_queue_if_no_path = queue_if_no_path;
	m->queue_if_no_path = queue_if_no_path;
	if (!m->queue_if_no_path && m->queue_size)
		FUNC0(kmultipathd, &m->process_queued_ios);

	FUNC2(&m->lock, flags);

	return 0;
}