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
struct file {int dummy; } ;

/* Variables and functions */
#define  DTLK_MINOR 128 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dtlk_busy ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	FUNC0("(dtlk_open");

	FUNC1();
	FUNC3(inode, file);
	switch (FUNC2(inode)) {
	case DTLK_MINOR:
		if (dtlk_busy)
			return -EBUSY;
		return FUNC3(inode, file);

	default:
		return -ENXIO;
	}
}