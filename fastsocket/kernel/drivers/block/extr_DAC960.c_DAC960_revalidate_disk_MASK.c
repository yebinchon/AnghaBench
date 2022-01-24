#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gendisk {scalar_t__ private_data; TYPE_1__* queue; } ;
struct TYPE_2__ {int /*<<< orphan*/ * queuedata; } ;
typedef  int /*<<< orphan*/  DAC960_Controller_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gendisk *disk)
{
	DAC960_Controller_T *p = disk->queue->queuedata;
	int unit = (long)disk->private_data;

	FUNC1(disk, FUNC0(p, unit));
	return 0;
}