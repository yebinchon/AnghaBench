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
struct file {int f_pos; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static loff_t FUNC2(struct file *file, loff_t off, int whence)
{
	loff_t new = -1;

	FUNC0();
	switch (whence) {
	case 0:
		new = off;
		break;
	case 1:
		new = file->f_pos + off;
		break;
	case 2:
		new = 256 + off;
		break;
	}
	if (new < 0 || new > 256) {
		FUNC1();
		return -EINVAL;
	}
	FUNC1();
	return (file->f_pos = new);
}