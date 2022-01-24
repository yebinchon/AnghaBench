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
typedef  int uint64_t ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct block_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct block_device *bdev, uint64_t start,
			     uint64_t len)
{
	if (start & 511)
		return -EINVAL;
	if (len & 511)
		return -EINVAL;
	start >>= 9;
	len >>= 9;

	if (start + len > (FUNC1(bdev->bd_inode) >> 9))
		return -EINVAL;
	return FUNC0(bdev, start, len, GFP_KERNEL, 0);
}