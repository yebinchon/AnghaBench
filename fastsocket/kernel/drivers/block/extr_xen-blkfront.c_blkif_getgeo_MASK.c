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
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct block_device *bd, struct hd_geometry *hg)
{
	/* We don't have real geometry info, but let's at least return
	   values consistent with the size of the device */
	sector_t nsect = FUNC0(bd->bd_disk);
	sector_t cylinders = nsect;

	hg->heads = 0xff;
	hg->sectors = 0x3f;
	FUNC1(cylinders, hg->heads * hg->sectors);
	hg->cylinders = cylinders;
	if ((sector_t)(hg->cylinders + 1) * hg->heads * hg->sectors < nsect)
		hg->cylinders = 0xffff;
	return 0;
}