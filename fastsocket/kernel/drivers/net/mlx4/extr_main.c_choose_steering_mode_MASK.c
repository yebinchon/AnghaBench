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
struct mlx4_dev_cap {int flags2; scalar_t__ fs_max_num_qp_per_entry; int /*<<< orphan*/  fs_log_max_ucast_qp_range_size; } ;
struct TYPE_2__ {scalar_t__ num_qp_per_mgm; int flags; int /*<<< orphan*/  steering_mode; int /*<<< orphan*/  fs_log_max_ucast_qp_range_size; } ;
struct mlx4_dev {int oper_log_mgm_entry_size; TYPE_1__ caps; } ;

/* Variables and functions */
 int MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE ; 
 int MLX4_DEV_CAP_FLAG2_FS_EN ; 
 int MLX4_DEV_CAP_FLAG_VEP_MC_STEER ; 
 int MLX4_DEV_CAP_FLAG_VEP_UC_STEER ; 
 scalar_t__ MLX4_MIN_MGM_LOG_ENTRY_SIZE ; 
 int /*<<< orphan*/  MLX4_STEERING_MODE_A0 ; 
 int /*<<< orphan*/  MLX4_STEERING_MODE_B0 ; 
 int /*<<< orphan*/  MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int mlx4_log_num_mgm_entry_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*) ; 
 scalar_t__ num_vfs ; 

__attribute__((used)) static void FUNC6(struct mlx4_dev *dev,
				 struct mlx4_dev_cap *dev_cap)
{
	if (mlx4_log_num_mgm_entry_size == -1 &&
	    dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_FS_EN &&
	    (!FUNC3(dev) ||
	     (dev_cap->fs_max_num_qp_per_entry >= (num_vfs + 1))) &&
	    FUNC0(dev_cap->fs_max_num_qp_per_entry) >=
		MLX4_MIN_MGM_LOG_ENTRY_SIZE) {
		dev->oper_log_mgm_entry_size =
			FUNC0(dev_cap->fs_max_num_qp_per_entry);
		dev->caps.steering_mode = MLX4_STEERING_MODE_DEVICE_MANAGED;
		dev->caps.num_qp_per_mgm = dev_cap->fs_max_num_qp_per_entry;
		dev->caps.fs_log_max_ucast_qp_range_size =
			dev_cap->fs_log_max_ucast_qp_range_size;
	} else {
		if (dev->caps.flags & MLX4_DEV_CAP_FLAG_VEP_UC_STEER &&
		    dev->caps.flags & MLX4_DEV_CAP_FLAG_VEP_MC_STEER)
			dev->caps.steering_mode = MLX4_STEERING_MODE_B0;
		else {
			dev->caps.steering_mode = MLX4_STEERING_MODE_A0;

			if (dev->caps.flags & MLX4_DEV_CAP_FLAG_VEP_UC_STEER ||
			    dev->caps.flags & MLX4_DEV_CAP_FLAG_VEP_MC_STEER)
				FUNC5(dev, "Must have both UC_STEER and MC_STEER flags "
					  "set to use B0 steering. Falling back to A0 steering mode.\n");
		}
		dev->oper_log_mgm_entry_size =
			mlx4_log_num_mgm_entry_size > 0 ?
			mlx4_log_num_mgm_entry_size :
			MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE;
		dev->caps.num_qp_per_mgm = FUNC2(dev);
	}
	FUNC1(dev, "Steering mode is: %s, oper_log_mgm_entry_size = %d, "
		 "modparam log_num_mgm_entry_size = %d\n",
		 FUNC4(dev->caps.steering_mode),
		 dev->oper_log_mgm_entry_size,
		 mlx4_log_num_mgm_entry_size);
}