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
struct video_card {scalar_t__ n_frames; int active_frame; scalar_t__ n_clear_frames; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  waitq; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 struct video_card* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, struct poll_table_struct *wait)
{
	struct video_card *video = FUNC0(file);
	unsigned int mask = 0;
	unsigned long flags;

	FUNC1(file, &video->waitq, wait);

	FUNC2(&video->spinlock, flags);
	if ( video->n_frames == 0 ) {

	} else if ( video->active_frame == -1 ) {
		/* nothing going on */
		mask |= POLLOUT;
	} else {
		/* any clear/ready buffers? */
		if (video->n_clear_frames >0)
			mask |= POLLOUT | POLLIN;
	}
	FUNC3(&video->spinlock, flags);

	return mask;
}