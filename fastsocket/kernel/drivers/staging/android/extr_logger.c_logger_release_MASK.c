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
struct logger_reader {int /*<<< orphan*/  list; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct logger_reader* private_data; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (struct logger_reader*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *ignored, struct file *file)
{
	if (file->f_mode & FMODE_READ) {
		struct logger_reader *reader = file->private_data;
		FUNC1(&reader->list);
		FUNC0(reader);
	}

	return 0;
}