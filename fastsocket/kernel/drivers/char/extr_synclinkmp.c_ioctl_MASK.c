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
struct tty_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tty_struct*,struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct file *file,
		 unsigned int cmd, unsigned long arg)
{
	int ret;
	FUNC1();
	ret = FUNC0(tty, file, cmd, arg);
	FUNC2();
	return ret;
}