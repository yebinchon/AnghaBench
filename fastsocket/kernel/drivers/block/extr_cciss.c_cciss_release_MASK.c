#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int /*<<< orphan*/  disk_name; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_7__ {int /*<<< orphan*/  usage_count; } ;
typedef  TYPE_2__ drive_info_struct ;
struct TYPE_8__ {int /*<<< orphan*/  usage_count; TYPE_1__* pdev; } ;
typedef  TYPE_3__ ctlr_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct gendisk*) ; 
 TYPE_3__* FUNC2 (struct gendisk*) ; 

__attribute__((used)) static int FUNC3(struct gendisk *disk, fmode_t mode)
{
	ctlr_info_t *h = FUNC2(disk);
	drive_info_struct *drv = FUNC1(disk);
	FUNC0(&h->pdev->dev, "cciss_release %s\n", disk->disk_name);
	drv->usage_count--;
	h->usage_count--;
	return 0;
}