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
struct tape_device {int dummy; } ;
struct gendisk {struct tape_device* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  TS_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct gendisk *disk, fmode_t mode)
{
	struct tape_device *device = disk->private_data;

	FUNC2(device, TS_IN_USE);
	FUNC1(device);
	FUNC0(device);

	return 0;
}