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
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int FUNC0 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct block_device *bdev, fmode_t mode,
	       unsigned int cmd, unsigned long arg)
{
	int rc;

	FUNC1();
	rc = FUNC0(bdev, mode, cmd, arg);
	FUNC2();
	return rc;
}