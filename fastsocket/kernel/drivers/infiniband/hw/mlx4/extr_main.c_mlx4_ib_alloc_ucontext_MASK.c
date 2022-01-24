#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ib_ucontext {int dummy; } ;
struct mlx4_ib_ucontext {struct ib_ucontext ibucontext; int /*<<< orphan*/  uar; int /*<<< orphan*/  db_page_mutex; int /*<<< orphan*/  db_page_list; } ;
struct mlx4_ib_dev {TYPE_2__* dev; int /*<<< orphan*/  ib_active; } ;
struct mlx4_ib_alloc_ucontext_resp_v3 {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  qp_tab_size; int /*<<< orphan*/  dev_caps; } ;
struct mlx4_ib_alloc_ucontext_resp {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  qp_tab_size; int /*<<< orphan*/  dev_caps; } ;
struct ib_udata {int dummy; } ;
struct ib_device {scalar_t__ uverbs_abi_ver; } ;
typedef  int /*<<< orphan*/  resp_v3 ;
typedef  int /*<<< orphan*/  resp ;
struct TYPE_4__ {int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  bf_regs_per_page; int /*<<< orphan*/  bf_reg_size; int /*<<< orphan*/  num_qps; int /*<<< orphan*/  userspace_caps; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_ucontext* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION ; 
 int FUNC2 (struct ib_udata*,struct mlx4_ib_alloc_ucontext_resp_v3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_ucontext*) ; 
 struct mlx4_ib_ucontext* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static struct ib_ucontext *FUNC9(struct ib_device *ibdev,
						  struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC8(ibdev);
	struct mlx4_ib_ucontext *context;
	struct mlx4_ib_alloc_ucontext_resp_v3 resp_v3;
	struct mlx4_ib_alloc_ucontext_resp resp;
	int err;

	if (!dev->ib_active)
		return FUNC0(-EAGAIN);

	if (ibdev->uverbs_abi_ver == MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION) {
		resp_v3.qp_tab_size      = dev->dev->caps.num_qps;
		resp_v3.bf_reg_size      = dev->dev->caps.bf_reg_size;
		resp_v3.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
	} else {
		resp.dev_caps	      = dev->dev->caps.userspace_caps;
		resp.qp_tab_size      = dev->dev->caps.num_qps;
		resp.bf_reg_size      = dev->dev->caps.bf_reg_size;
		resp.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
		resp.cqe_size	      = dev->dev->caps.cqe_size;
	}

	context = FUNC4(sizeof *context, GFP_KERNEL);
	if (!context)
		return FUNC0(-ENOMEM);

	err = FUNC5(FUNC8(ibdev)->dev, &context->uar);
	if (err) {
		FUNC3(context);
		return FUNC0(err);
	}

	FUNC1(&context->db_page_list);
	FUNC7(&context->db_page_mutex);

	if (ibdev->uverbs_abi_ver == MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION)
		err = FUNC2(udata, &resp_v3, sizeof(resp_v3));
	else
		err = FUNC2(udata, &resp, sizeof(resp));

	if (err) {
		FUNC6(FUNC8(ibdev)->dev, &context->uar);
		FUNC3(context);
		return FUNC0(-EFAULT);
	}

	return &context->ibucontext;
}