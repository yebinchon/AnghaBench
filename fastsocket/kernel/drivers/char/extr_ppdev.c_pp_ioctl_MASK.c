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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned int cmd, unsigned long arg)
{
	long ret;
	FUNC0();
	ret = FUNC1(file, cmd, arg);
	FUNC2();
	return ret;
}