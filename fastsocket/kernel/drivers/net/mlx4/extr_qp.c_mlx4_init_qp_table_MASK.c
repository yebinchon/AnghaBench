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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_qp_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__* reserved_qps_cnt; int num_qps; int* reserved_qps_base; int num_ports; scalar_t__* qp1_proxy; scalar_t__* qp1_tunnel; scalar_t__* qp0_proxy; scalar_t__* qp0_tunnel; } ;
struct TYPE_4__ {scalar_t__ base_sqpn; scalar_t__ base_proxy_sqpn; scalar_t__ base_tunnel_sqpn; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; int /*<<< orphan*/  qp_table_tree; } ;
struct TYPE_6__ {struct mlx4_qp_table qp_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX4_MAX_PORTS ; 
 int MLX4_MFUNC_MAX ; 
 int MLX4_NUM_QP_REGION ; 
 size_t MLX4_QP_REGION_FW ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (struct mlx4_dev*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 scalar_t__ FUNC7 (struct mlx4_dev*) ; 
 scalar_t__ FUNC8 (struct mlx4_dev*) ; 
 int FUNC9 (struct mlx4_dev*) ; 
 TYPE_3__* FUNC10 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mlx4_dev *dev)
{
	struct mlx4_qp_table *qp_table = &FUNC10(dev)->qp_table;
	int err;
	int reserved_from_top = 0;
	int k;

	FUNC11(&qp_table->lock);
	FUNC1(&dev->qp_table_tree, GFP_ATOMIC);
	if (FUNC8(dev))
		return 0;

	/*
	 * We reserve 2 extra QPs per port for the special QPs.  The
	 * block of special QPs must be aligned to a multiple of 8, so
	 * round up.
	 *
	 * We also reserve the MSB of the 24-bit QP number to indicate
	 * that a QP is an XRC QP.
	 */
	dev->phys_caps.base_sqpn =
		FUNC0(dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW], 8);

	{
		int sort[MLX4_NUM_QP_REGION];
		int i, j, tmp;
		int last_base = dev->caps.num_qps;

		for (i = 1; i < MLX4_NUM_QP_REGION; ++i)
			sort[i] = i;

		for (i = MLX4_NUM_QP_REGION; i > 0; --i) {
			for (j = 2; j < i; ++j) {
				if (dev->caps.reserved_qps_cnt[sort[j]] >
				    dev->caps.reserved_qps_cnt[sort[j - 1]]) {
					tmp             = sort[j];
					sort[j]         = sort[j - 1];
					sort[j - 1]     = tmp;
				}
			}
		}

		for (i = 1; i < MLX4_NUM_QP_REGION; ++i) {
			last_base -= dev->caps.reserved_qps_cnt[sort[i]];
			dev->caps.reserved_qps_base[sort[i]] = last_base;
			reserved_from_top +=
				dev->caps.reserved_qps_cnt[sort[i]];
		}

	}

       /* Reserve 8 real SQPs in both native and SRIOV modes.
	* In addition, in SRIOV mode, reserve 8 proxy SQPs per function
	* (for all PFs and VFs), and 8 corresponding tunnel QPs.
	* Each proxy SQP works opposite its own tunnel QP.
	*
	* The QPs are arranged as follows:
	* a. 8 real SQPs
	* b. All the proxy SQPs (8 per function)
	* c. All the tunnel QPs (8 per function)
	*/

	err = FUNC5(&qp_table->bitmap, dev->caps.num_qps,
			       (1 << 23) - 1, dev->phys_caps.base_sqpn + 8 +
			       16 * MLX4_MFUNC_MAX * !!FUNC6(dev),
			       reserved_from_top);
	if (err)
		return err;

	if (FUNC7(dev)) {
		/* for PPF use */
		dev->phys_caps.base_proxy_sqpn = dev->phys_caps.base_sqpn + 8;
		dev->phys_caps.base_tunnel_sqpn = dev->phys_caps.base_sqpn + 8 + 8 * MLX4_MFUNC_MAX;

		/* In mfunc, calculate proxy and tunnel qp offsets for the PF here,
		 * since the PF does not call mlx4_slave_caps */
		dev->caps.qp0_tunnel = FUNC2(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
		dev->caps.qp0_proxy = FUNC2(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
		dev->caps.qp1_tunnel = FUNC2(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
		dev->caps.qp1_proxy = FUNC2(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

		if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
		    !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy) {
			err = -ENOMEM;
			goto err_mem;
		}

		for (k = 0; k < dev->caps.num_ports; k++) {
			dev->caps.qp0_proxy[k] = dev->phys_caps.base_proxy_sqpn +
				8 * FUNC9(dev) + k;
			dev->caps.qp0_tunnel[k] = dev->caps.qp0_proxy[k] + 8 * MLX4_MFUNC_MAX;
			dev->caps.qp1_proxy[k] = dev->phys_caps.base_proxy_sqpn +
				8 * FUNC9(dev) + MLX4_MAX_PORTS + k;
			dev->caps.qp1_tunnel[k] = dev->caps.qp1_proxy[k] + 8 * MLX4_MFUNC_MAX;
		}
	}


	err = FUNC4(dev, dev->phys_caps.base_sqpn);
	if (err)
		goto err_mem;
	return 0;

err_mem:
	FUNC3(dev->caps.qp0_tunnel);
	FUNC3(dev->caps.qp0_proxy);
	FUNC3(dev->caps.qp1_tunnel);
	FUNC3(dev->caps.qp1_proxy);
	dev->caps.qp0_tunnel = dev->caps.qp0_proxy =
		dev->caps.qp1_tunnel = dev->caps.qp1_proxy = NULL;
	return err;
}