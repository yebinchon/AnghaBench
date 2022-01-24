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
struct logger_reader {scalar_t__ r_off; struct logger_log* log; } ;
struct logger_log {scalar_t__ w_off; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wq; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int FMODE_READ ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table *wait)
{
	struct logger_reader *reader;
	struct logger_log *log;
	unsigned int ret = POLLOUT | POLLWRNORM;

	if (!(file->f_mode & FMODE_READ))
		return ret;

	reader = file->private_data;
	log = reader->log;

	FUNC2(file, &log->wq, wait);

	FUNC0(&log->mutex);
	if (log->w_off != reader->r_off)
		ret |= POLLIN | POLLRDNORM;
	FUNC1(&log->mutex);

	return ret;
}