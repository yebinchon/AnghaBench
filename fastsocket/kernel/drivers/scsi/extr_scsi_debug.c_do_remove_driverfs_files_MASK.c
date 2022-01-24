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

/* Variables and functions */
 int /*<<< orphan*/  driver_attr_add_host ; 
 int /*<<< orphan*/  driver_attr_ato ; 
 int /*<<< orphan*/  driver_attr_delay ; 
 int /*<<< orphan*/  driver_attr_dev_size_mb ; 
 int /*<<< orphan*/  driver_attr_dif ; 
 int /*<<< orphan*/  driver_attr_dix ; 
 int /*<<< orphan*/  driver_attr_dsense ; 
 int /*<<< orphan*/  driver_attr_every_nth ; 
 int /*<<< orphan*/  driver_attr_fake_rw ; 
 int /*<<< orphan*/  driver_attr_guard ; 
 int /*<<< orphan*/  driver_attr_map ; 
 int /*<<< orphan*/  driver_attr_max_luns ; 
 int /*<<< orphan*/  driver_attr_max_queue ; 
 int /*<<< orphan*/  driver_attr_no_lun_0 ; 
 int /*<<< orphan*/  driver_attr_no_uld ; 
 int /*<<< orphan*/  driver_attr_num_parts ; 
 int /*<<< orphan*/  driver_attr_num_tgts ; 
 int /*<<< orphan*/  driver_attr_opts ; 
 int /*<<< orphan*/  driver_attr_ptype ; 
 int /*<<< orphan*/  driver_attr_scsi_level ; 
 int /*<<< orphan*/  driver_attr_sector_size ; 
 int /*<<< orphan*/  driver_attr_virtual_gb ; 
 int /*<<< orphan*/  driver_attr_vpd_use_hostno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdebug_driverfs_driver ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(&sdebug_driverfs_driver, &driver_attr_map);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_ato);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_guard);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_dif);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_dix);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_sector_size);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_vpd_use_hostno);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_virtual_gb);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_scsi_level);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_opts);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_ptype);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_num_tgts);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_num_parts);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_no_uld);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_no_lun_0);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_max_queue);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_max_luns);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_fake_rw);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_every_nth);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_dsense);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_dev_size_mb);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_delay);
	FUNC0(&sdebug_driverfs_driver, &driver_attr_add_host);
}