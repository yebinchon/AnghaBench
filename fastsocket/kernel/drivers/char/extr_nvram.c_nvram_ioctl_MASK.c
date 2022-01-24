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
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int ENOTTY ; 
 int NVRAM_BYTES ; 
#define  NVRAM_INIT 129 
#define  NVRAM_SETCKS 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file,
					unsigned int cmd, unsigned long arg)
{
	int i;

	switch (cmd) {

	case NVRAM_INIT:
		/* initialize NVRAM contents and checksum */
		if (!FUNC2(CAP_SYS_ADMIN))
			return -EACCES;

		FUNC3(&rtc_lock);

		for (i = 0; i < NVRAM_BYTES; ++i)
			FUNC1(0, i);
		FUNC0();

		FUNC4(&rtc_lock);
		return 0;

	case NVRAM_SETCKS:
		/* just set checksum, contents unchanged (maybe useful after
		 * checksum garbaged somehow...) */
		if (!FUNC2(CAP_SYS_ADMIN))
			return -EACCES;

		FUNC3(&rtc_lock);
		FUNC0();
		FUNC4(&rtc_lock);
		return 0;

	default:
		return -ENOTTY;
	}
}