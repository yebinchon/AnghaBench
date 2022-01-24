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
typedef  unsigned long long u32 ;
struct mlx4_init_hca_param {int global_caps; int log_rd_per_qp; int uar_page_sz; int pf_context_behaviour; int num_ports; int dev_cap_enabled; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; } ;
struct mlx4_func_cap {int global_caps; int log_rd_per_qp; int uar_page_sz; int pf_context_behaviour; int num_ports; int dev_cap_enabled; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; } ;
struct mlx4_dev_cap {int global_caps; int log_rd_per_qp; int uar_page_sz; int pf_context_behaviour; int num_ports; int dev_cap_enabled; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; } ;
struct TYPE_2__ {int max_qp_dest_rdma; int page_size_cap; int uar_page_size; int num_ports; int num_uars; int reserved_uars; int eqe_size; int eqe_factor; int cqe_size; int /*<<< orphan*/ * qp1_proxy; int /*<<< orphan*/ * qp1_tunnel; int /*<<< orphan*/ * qp0_proxy; int /*<<< orphan*/ * qp0_tunnel; int /*<<< orphan*/  flags2; int /*<<< orphan*/  userspace_caps; int /*<<< orphan*/ * pkey_table_len; int /*<<< orphan*/ * gid_table_len; int /*<<< orphan*/ * port_type; int /*<<< orphan*/ * port_mask; scalar_t__ num_amgms; scalar_t__ num_mgms; int /*<<< orphan*/  num_pds; int /*<<< orphan*/  num_mtts; int /*<<< orphan*/  num_mpts; int /*<<< orphan*/  reserved_eqs; int /*<<< orphan*/  num_eqs; int /*<<< orphan*/  num_cqs; int /*<<< orphan*/  num_srqs; int /*<<< orphan*/  num_qps; int /*<<< orphan*/  hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  hca_param ;
typedef  int /*<<< orphan*/  func_cap ;
typedef  int /*<<< orphan*/  dev_cap ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCA_GLOBAL_CAP_MASK ; 
 int MLX4_DEV_CAP_64B_CQE_ENABLED ; 
 int MLX4_DEV_CAP_64B_EQE_ENABLED ; 
 int /*<<< orphan*/  MLX4_DEV_CAP_FLAG2_TS ; 
 unsigned long long MLX4_MAX_PORTS ; 
 int /*<<< orphan*/  MLX4_NUM_PDS ; 
 int /*<<< orphan*/  MLX4_USER_DEV_CAP_64B_CQE ; 
 unsigned long long PAGE_SIZE ; 
 int PF_CONTEXT_BEHAVIOUR_MASK ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_init_hca_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_dev*,unsigned long long,struct mlx4_init_hca_param*) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int FUNC6 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,...) ; 
 scalar_t__ FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx4_log_num_mgm_entry_size ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,struct mlx4_init_hca_param*,struct mlx4_init_hca_param*) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev)
{
	int			   err;
	u32			   page_size;
	struct mlx4_dev_cap	   dev_cap;
	struct mlx4_func_cap	   func_cap;
	struct mlx4_init_hca_param hca_param;
	int			   i;

	FUNC2(&hca_param, 0, sizeof(hca_param));
	err = FUNC5(dev, &hca_param);
	if (err) {
		FUNC7(dev, "QUERY_HCA command failed, aborting.\n");
		return err;
	}

	/*fail if the hca has an unknown capability */
	if ((hca_param.global_caps | HCA_GLOBAL_CAP_MASK) !=
	    HCA_GLOBAL_CAP_MASK) {
		FUNC7(dev, "Unknown hca global capabilities\n");
		return -ENOSYS;
	}

	mlx4_log_num_mgm_entry_size = hca_param.log_mc_entry_sz;

	dev->caps.hca_core_clock = hca_param.hca_core_clock;

	FUNC2(&dev_cap, 0, sizeof(dev_cap));
	dev->caps.max_qp_dest_rdma = 1 << hca_param.log_rd_per_qp;
	err = FUNC6(dev, &dev_cap);
	if (err) {
		FUNC7(dev, "QUERY_DEV_CAP command failed, aborting.\n");
		return err;
	}

	err = FUNC4(dev);
	if (err)
		FUNC7(dev, "QUERY_FW command failed: could not get FW version.\n");

	page_size = ~dev->caps.page_size_cap + 1;
	FUNC9(dev, "HCA minimum page size:%d\n", page_size);
	if (page_size > PAGE_SIZE) {
		FUNC7(dev, "HCA minimum page size of %d bigger than "
			 "kernel PAGE_SIZE of %ld, aborting.\n",
			 page_size, PAGE_SIZE);
		return -ENODEV;
	}

	/* slave gets uar page size from QUERY_HCA fw command */
	dev->caps.uar_page_size = 1 << (hca_param.uar_page_sz + 12);

	/* TODO: relax this assumption */
	if (dev->caps.uar_page_size != PAGE_SIZE) {
		FUNC7(dev, "UAR size:%d != kernel PAGE_SIZE of %ld\n",
			 dev->caps.uar_page_size, PAGE_SIZE);
		return -ENODEV;
	}

	FUNC2(&func_cap, 0, sizeof(func_cap));
	err = FUNC3(dev, 0, &func_cap);
	if (err) {
		FUNC7(dev, "QUERY_FUNC_CAP general command failed, aborting (%d).\n",
			  err);
		return err;
	}

	if ((func_cap.pf_context_behaviour | PF_CONTEXT_BEHAVIOUR_MASK) !=
	    PF_CONTEXT_BEHAVIOUR_MASK) {
		FUNC7(dev, "Unknown pf context behaviour\n");
		return -ENOSYS;
	}

	dev->caps.num_ports		= func_cap.num_ports;
	dev->caps.num_qps		= func_cap.qp_quota;
	dev->caps.num_srqs		= func_cap.srq_quota;
	dev->caps.num_cqs		= func_cap.cq_quota;
	dev->caps.num_eqs               = func_cap.max_eq;
	dev->caps.reserved_eqs          = func_cap.reserved_eq;
	dev->caps.num_mpts		= func_cap.mpt_quota;
	dev->caps.num_mtts		= func_cap.mtt_quota;
	dev->caps.num_pds               = MLX4_NUM_PDS;
	dev->caps.num_mgms              = 0;
	dev->caps.num_amgms             = 0;

	if (dev->caps.num_ports > MLX4_MAX_PORTS) {
		FUNC7(dev, "HCA has %d ports, but we only support %d, "
			 "aborting.\n", dev->caps.num_ports, MLX4_MAX_PORTS);
		return -ENODEV;
	}

	dev->caps.qp0_tunnel = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp0_proxy = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp1_tunnel = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp1_proxy = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

	if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
	    !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy) {
		err = -ENOMEM;
		goto err_mem;
	}

	for (i = 1; i <= dev->caps.num_ports; ++i) {
		err = FUNC3(dev, (u32) i, &func_cap);
		if (err) {
			FUNC7(dev, "QUERY_FUNC_CAP port command failed for"
				 " port %d, aborting (%d).\n", i, err);
			goto err_mem;
		}
		dev->caps.qp0_tunnel[i - 1] = func_cap.qp0_tunnel_qpn;
		dev->caps.qp0_proxy[i - 1] = func_cap.qp0_proxy_qpn;
		dev->caps.qp1_tunnel[i - 1] = func_cap.qp1_tunnel_qpn;
		dev->caps.qp1_proxy[i - 1] = func_cap.qp1_proxy_qpn;
		dev->caps.port_mask[i] = dev->caps.port_type[i];
		if (FUNC8(dev, i,
						    &dev->caps.gid_table_len[i],
						    &dev->caps.pkey_table_len[i]))
			goto err_mem;
	}

	if (dev->caps.uar_page_size * (dev->caps.num_uars -
				       dev->caps.reserved_uars) >
				       FUNC10(dev->pdev, 2)) {
		FUNC7(dev, "HCA reported UAR region size of 0x%x bigger than "
			 "PCI resource 2 size of 0x%llx, aborting.\n",
			 dev->caps.uar_page_size * dev->caps.num_uars,
			 (unsigned long long) FUNC10(dev->pdev, 2));
		goto err_mem;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_EQE_ENABLED) {
		dev->caps.eqe_size   = 64;
		dev->caps.eqe_factor = 1;
	} else {
		dev->caps.eqe_size   = 32;
		dev->caps.eqe_factor = 0;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_CQE_ENABLED) {
		dev->caps.cqe_size   = 64;
		dev->caps.userspace_caps |= MLX4_USER_DEV_CAP_64B_CQE;
	} else {
		dev->caps.cqe_size   = 32;
	}

	dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
	FUNC9(dev, "Timestamping is not supported in slave mode.\n");

	FUNC11(dev, &dev_cap, &hca_param);

	return 0;

err_mem:
	FUNC1(dev->caps.qp0_tunnel);
	FUNC1(dev->caps.qp0_proxy);
	FUNC1(dev->caps.qp1_tunnel);
	FUNC1(dev->caps.qp1_proxy);
	dev->caps.qp0_tunnel = dev->caps.qp0_proxy =
		dev->caps.qp1_tunnel = dev->caps.qp1_proxy = NULL;

	return err;
}