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
struct saa5249_device {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_saa5249_ioctl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct saa5249_device* FUNC2 (struct file*) ; 
 long FUNC3 (struct file*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static long FUNC5(struct file *file,
			 unsigned int cmd, unsigned long arg)
{
	struct saa5249_device *t = FUNC2(file);
	long err;

	cmd = FUNC4(cmd);
	FUNC0(&t->lock);
	err = FUNC3(file, cmd, arg, do_saa5249_ioctl);
	FUNC1(&t->lock);
	return err;
}