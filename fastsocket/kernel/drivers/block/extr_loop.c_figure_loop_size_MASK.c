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
struct loop_device {int /*<<< orphan*/  lo_disk; int /*<<< orphan*/  lo_backing_file; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EFBIG ; 
 scalar_t__ FUNC0 (struct loop_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct loop_device *lo)
{
	loff_t size = FUNC0(lo, lo->lo_backing_file);
	sector_t x = (sector_t)size;

	if (FUNC2((loff_t)x != size))
		return -EFBIG;

	FUNC1(lo->lo_disk, x);
	return 0;					
}