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
struct file {scalar_t__ f_pos; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  nvram_len ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static loff_t FUNC2(struct file *file, loff_t offset, int origin)
{
	FUNC0();
	switch (origin) {
	case 1:
		offset += file->f_pos;
		break;
	case 2:
		offset += nvram_len;
		break;
	}
	if (offset < 0) {
		FUNC1();
		return -EINVAL;
	}
	file->f_pos = offset;
	FUNC1();
	return file->f_pos;
}