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
struct gendisk {scalar_t__ queue; int /*<<< orphan*/  part0; struct gendisk* random; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct gendisk* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct gendisk *disk = FUNC1(dev);

	FUNC4(disk->random);
	FUNC2(disk, NULL);
	FUNC3(&disk->part0);
	if (disk->queue)
		FUNC0(disk->queue);
	FUNC4(disk);
}