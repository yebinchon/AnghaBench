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
struct ubi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_avail_eraseblocks ; 
 int /*<<< orphan*/  dev_bad_peb_count ; 
 int /*<<< orphan*/  dev_bgt_enabled ; 
 int /*<<< orphan*/  dev_eraseblock_size ; 
 int /*<<< orphan*/  dev_max_ec ; 
 int /*<<< orphan*/  dev_max_vol_count ; 
 int /*<<< orphan*/  dev_min_io_size ; 
 int /*<<< orphan*/  dev_mtd_num ; 
 int /*<<< orphan*/  dev_reserved_for_bad ; 
 int /*<<< orphan*/  dev_total_eraseblocks ; 
 int /*<<< orphan*/  dev_volumes_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ubi_device *ubi)
{
	FUNC0(&ubi->dev, &dev_mtd_num);
	FUNC0(&ubi->dev, &dev_bgt_enabled);
	FUNC0(&ubi->dev, &dev_min_io_size);
	FUNC0(&ubi->dev, &dev_max_vol_count);
	FUNC0(&ubi->dev, &dev_bad_peb_count);
	FUNC0(&ubi->dev, &dev_reserved_for_bad);
	FUNC0(&ubi->dev, &dev_max_ec);
	FUNC0(&ubi->dev, &dev_volumes_count);
	FUNC0(&ubi->dev, &dev_total_eraseblocks);
	FUNC0(&ubi->dev, &dev_avail_eraseblocks);
	FUNC0(&ubi->dev, &dev_eraseblock_size);
	FUNC1(&ubi->dev);
}