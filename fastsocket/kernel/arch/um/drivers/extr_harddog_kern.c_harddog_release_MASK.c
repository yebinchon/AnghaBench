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
 int harddog_in_fd ; 
 int harddog_out_fd ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ timer_alive ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	/*
	 *	Shut off the timer.
	 */

	FUNC0(&lock);

	FUNC2(harddog_in_fd, harddog_out_fd);
	harddog_in_fd = -1;
	harddog_out_fd = -1;

	timer_alive=0;
	FUNC1(&lock);

	return 0;
}