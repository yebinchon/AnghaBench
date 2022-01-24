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
struct inode {int dummy; } ;
struct file {int f_flags; int f_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int FMODE_WRITE ; 
 int NVRAM_EXCL ; 
 int NVRAM_WRITE ; 
 int O_EXCL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ nvram_open_cnt ; 
 int nvram_open_mode ; 
 int /*<<< orphan*/  nvram_state_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	FUNC0();
	FUNC1(&nvram_state_lock);

	if ((nvram_open_cnt && (file->f_flags & O_EXCL)) ||
	    (nvram_open_mode & NVRAM_EXCL) ||
	    ((file->f_mode & FMODE_WRITE) && (nvram_open_mode & NVRAM_WRITE))) {
		FUNC2(&nvram_state_lock);
		FUNC3();
		return -EBUSY;
	}

	if (file->f_flags & O_EXCL)
		nvram_open_mode |= NVRAM_EXCL;
	if (file->f_mode & FMODE_WRITE)
		nvram_open_mode |= NVRAM_WRITE;
	nvram_open_cnt++;

	FUNC2(&nvram_state_lock);
	FUNC3();

	return 0;
}