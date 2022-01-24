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
struct dentry {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int,struct dentry*) ; 
 int /*<<< orphan*/  cpu_file ; 

__attribute__((used)) static int FUNC2(unsigned cpu, unsigned int type, unsigned reg,
			     struct dentry *dentry)
{
	unsigned file;
	int err = 0;

	for (file = 0; file <  FUNC0(cpu_file); file++) {
		err = FUNC1(cpu, type, reg, file, dentry);
		if (err)
			return err;
	}

	return err;
}