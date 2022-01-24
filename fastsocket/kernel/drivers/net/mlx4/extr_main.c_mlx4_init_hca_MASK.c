#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mlx4_profile {int /*<<< orphan*/  num_mcg; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_icm; } ;
struct TYPE_5__ {int /*<<< orphan*/  inta_pin; } ;
struct mlx4_priv {TYPE_3__ fw; TYPE_2__ eq_table; } ;
struct mlx4_mod_stat_cfg {int log_pg_sz_m; scalar_t__ log_pg_sz; } ;
struct mlx4_init_hca_param {int log_uar_sz; int /*<<< orphan*/  hca_core_clock; scalar_t__ mw_enabled; scalar_t__ uar_page_sz; } ;
struct mlx4_dev_cap {int dummy; } ;
struct TYPE_4__ {scalar_t__ steering_mode; int max_fmr_maps; int flags; int bmme_flags; int flags2; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  num_uars; int /*<<< orphan*/  num_mpts; } ;
struct mlx4_dev {int /*<<< orphan*/  board_id; TYPE_1__ caps; } ;
struct mlx4_adapter {int /*<<< orphan*/  board_id; int /*<<< orphan*/  inta_pin; } ;
typedef  int /*<<< orphan*/  init_hca ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ INIT_HCA_TPT_MW_ENABLE ; 
 int MLX4_BMME_FLAG_TYPE_2_WIN ; 
 int MLX4_DEV_CAP_FLAG2_TS ; 
 int MLX4_DEV_CAP_FLAG_MEM_WINDOW ; 
 int /*<<< orphan*/  MLX4_FS_NUM_MCG ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_dev_cap*) ; 
 struct mlx4_profile default_profile ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_init_hca_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int FUNC8 (struct mlx4_dev*,struct mlx4_mod_stat_cfg*) ; 
 int FUNC9 (struct mlx4_dev*,struct mlx4_adapter*) ; 
 int FUNC10 (struct mlx4_dev*) ; 
 int FUNC11 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,char*) ; 
 int FUNC14 (struct mlx4_dev*,struct mlx4_dev_cap*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx4_dev*,char*) ; 
 int FUNC19 (struct mlx4_dev*,struct mlx4_dev_cap*,struct mlx4_init_hca_param*,int) ; 
 int FUNC20 (struct mlx4_dev*) ; 
 scalar_t__ FUNC21 (struct mlx4_dev*) ; 
 scalar_t__ FUNC22 (struct mlx4_dev*) ; 
 int FUNC23 (struct mlx4_dev*) ; 
 int FUNC24 (struct mlx4_dev*,struct mlx4_profile*,struct mlx4_dev_cap*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC26 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlx4_dev*) ; 
 int FUNC28 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC30 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC31 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC33(struct mlx4_dev *dev)
{
	struct mlx4_priv	  *priv = FUNC26(dev);
	struct mlx4_adapter	   adapter;
	struct mlx4_dev_cap	   dev_cap;
	struct mlx4_mod_stat_cfg   mlx4_cfg;
	struct mlx4_profile	   profile;
	struct mlx4_init_hca_param init_hca;
	u64 icm_size;
	int err;

	if (!FUNC22(dev)) {
		err = FUNC10(dev);
		if (err) {
			if (err == -EACCES)
				FUNC18(dev, "non-primary physical function, skipping.\n");
			else
				FUNC15(dev, "QUERY_FW command failed, aborting.\n");
			return err;
		}

		err = FUNC23(dev);
		if (err) {
			FUNC15(dev, "Failed to start FW, aborting.\n");
			return err;
		}

		mlx4_cfg.log_pg_sz_m = 1;
		mlx4_cfg.log_pg_sz = 0;
		err = FUNC8(dev, &mlx4_cfg);
		if (err)
			FUNC30(dev, "Failed to override log_pg_sz parameter\n");

		err = FUNC14(dev, &dev_cap);
		if (err) {
			FUNC15(dev, "QUERY_DEV_CAP command failed, aborting.\n");
			goto err_stop_fw;
		}

		FUNC0(dev, &dev_cap);

		if (FUNC21(dev))
			FUNC25(dev);

		profile = default_profile;
		if (dev->caps.steering_mode ==
		    MLX4_STEERING_MODE_DEVICE_MANAGED)
			profile.num_mcg = MLX4_FS_NUM_MCG;

		icm_size = FUNC24(dev, &profile, &dev_cap,
					     &init_hca);
		if ((long long) icm_size < 0) {
			err = icm_size;
			goto err_stop_fw;
		}

		dev->caps.max_fmr_maps = (1 << (32 - FUNC1(dev->caps.num_mpts))) - 1;

		init_hca.log_uar_sz = FUNC1(dev->caps.num_uars);
		init_hca.uar_page_sz = PAGE_SHIFT - 12;
		init_hca.mw_enabled = 0;
		if (dev->caps.flags & MLX4_DEV_CAP_FLAG_MEM_WINDOW ||
		    dev->caps.bmme_flags & MLX4_BMME_FLAG_TYPE_2_WIN)
			init_hca.mw_enabled = INIT_HCA_TPT_MW_ENABLE;

		err = FUNC19(dev, &dev_cap, &init_hca, icm_size);
		if (err)
			goto err_stop_fw;

		err = FUNC7(dev, &init_hca);
		if (err) {
			FUNC15(dev, "INIT_HCA command failed, aborting.\n");
			goto err_free_icm;
		}
		/*
		 * If TS is supported by FW
		 * read HCA frequency by QUERY_HCA command
		 */
		if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS) {
			FUNC5(&init_hca, 0, sizeof(init_hca));
			err = FUNC11(dev, &init_hca);
			if (err) {
				FUNC15(dev, "QUERY_HCA command failed, disable timestamp.\n");
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
			} else {
				dev->caps.hca_core_clock =
					init_hca.hca_core_clock;
			}

			/* In case we got HCA frequency 0 - disable timestamping
			 * to avoid dividing by zero
			 */
			if (!dev->caps.hca_core_clock) {
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
				FUNC15(dev,
					 "HCA frequency is 0. Timestamping is not supported.");
			} else if (FUNC3(dev)) {
				/*
				 * Map internal clock,
				 * in case of failure disable timestamping
				 */
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
				FUNC15(dev, "Failed to map internal clock. Timestamping is not supported.\n");
			}
		}
	} else {
		err = FUNC20(dev);
		if (err) {
			FUNC15(dev, "Failed to initialize slave\n");
			return err;
		}

		err = FUNC28(dev);
		if (err) {
			FUNC15(dev, "Failed to obtain slave caps\n");
			goto err_close;
		}
	}

	if (FUNC2(dev))
		FUNC13(dev, "Failed to map blue flame area\n");

	/*Only the master set the ports, all the rest got it from it.*/
	if (!FUNC22(dev))
		FUNC27(dev);

	err = FUNC9(dev, &adapter);
	if (err) {
		FUNC15(dev, "QUERY_ADAPTER command failed, aborting.\n");
		goto unmap_bf;
	}

	priv->eq_table.inta_pin = adapter.inta_pin;
	FUNC4(dev->board_id, adapter.board_id, sizeof dev->board_id);

	return 0;

unmap_bf:
	FUNC32(dev);
	FUNC31(dev);

err_close:
	if (FUNC22(dev))
		FUNC29(dev);
	else
		FUNC6(dev, 0);

err_free_icm:
	if (!FUNC22(dev))
		FUNC17(dev);

err_stop_fw:
	if (!FUNC22(dev)) {
		FUNC12(dev);
		FUNC16(dev, priv->fw.fw_icm, 0);
	}
	return err;
}