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
struct logger_reader {int /*<<< orphan*/  mutex; int /*<<< orphan*/  readers; int /*<<< orphan*/  list; int /*<<< orphan*/  head; int /*<<< orphan*/  r_off; struct logger_reader* log; } ;
struct logger_log {int /*<<< orphan*/  mutex; int /*<<< orphan*/  readers; int /*<<< orphan*/  list; int /*<<< orphan*/  head; int /*<<< orphan*/  r_off; struct logger_log* log; } ;
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct logger_reader* FUNC2 (int /*<<< orphan*/ ) ; 
 struct logger_reader* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct logger_log *log;
	int ret;

	ret = FUNC7(inode, file);
	if (ret)
		return ret;

	log = FUNC2(FUNC1(inode->i_rdev));
	if (!log)
		return -ENODEV;

	if (file->f_mode & FMODE_READ) {
		struct logger_reader *reader;

		reader = FUNC3(sizeof(struct logger_reader), GFP_KERNEL);
		if (!reader)
			return -ENOMEM;

		reader->log = log;
		FUNC0(&reader->list);

		FUNC5(&log->mutex);
		reader->r_off = log->head;
		FUNC4(&reader->list, &log->readers);
		FUNC6(&log->mutex);

		file->private_data = reader;
	} else
		file->private_data = log;

	return 0;
}