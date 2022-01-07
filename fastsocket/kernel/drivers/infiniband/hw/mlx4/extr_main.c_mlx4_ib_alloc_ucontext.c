
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_ucontext {int dummy; } ;
struct mlx4_ib_ucontext {struct ib_ucontext ibucontext; int uar; int db_page_mutex; int db_page_list; } ;
struct mlx4_ib_dev {TYPE_2__* dev; int ib_active; } ;
struct mlx4_ib_alloc_ucontext_resp_v3 {int cqe_size; int bf_regs_per_page; int bf_reg_size; int qp_tab_size; int dev_caps; } ;
struct mlx4_ib_alloc_ucontext_resp {int cqe_size; int bf_regs_per_page; int bf_reg_size; int qp_tab_size; int dev_caps; } ;
struct ib_udata {int dummy; } ;
struct ib_device {scalar_t__ uverbs_abi_ver; } ;
typedef int resp_v3 ;
typedef int resp ;
struct TYPE_4__ {int cqe_size; int bf_regs_per_page; int bf_reg_size; int num_qps; int userspace_caps; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int EAGAIN ;
 int EFAULT ;
 int ENOMEM ;
 struct ib_ucontext* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION ;
 int ib_copy_to_udata (struct ib_udata*,struct mlx4_ib_alloc_ucontext_resp_v3*,int) ;
 int kfree (struct mlx4_ib_ucontext*) ;
 struct mlx4_ib_ucontext* kmalloc (int,int ) ;
 int mlx4_uar_alloc (TYPE_2__*,int *) ;
 int mlx4_uar_free (TYPE_2__*,int *) ;
 int mutex_init (int *) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct ib_ucontext *mlx4_ib_alloc_ucontext(struct ib_device *ibdev,
        struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct mlx4_ib_ucontext *context;
 struct mlx4_ib_alloc_ucontext_resp_v3 resp_v3;
 struct mlx4_ib_alloc_ucontext_resp resp;
 int err;

 if (!dev->ib_active)
  return ERR_PTR(-EAGAIN);

 if (ibdev->uverbs_abi_ver == MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION) {
  resp_v3.qp_tab_size = dev->dev->caps.num_qps;
  resp_v3.bf_reg_size = dev->dev->caps.bf_reg_size;
  resp_v3.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
 } else {
  resp.dev_caps = dev->dev->caps.userspace_caps;
  resp.qp_tab_size = dev->dev->caps.num_qps;
  resp.bf_reg_size = dev->dev->caps.bf_reg_size;
  resp.bf_regs_per_page = dev->dev->caps.bf_regs_per_page;
  resp.cqe_size = dev->dev->caps.cqe_size;
 }

 context = kmalloc(sizeof *context, GFP_KERNEL);
 if (!context)
  return ERR_PTR(-ENOMEM);

 err = mlx4_uar_alloc(to_mdev(ibdev)->dev, &context->uar);
 if (err) {
  kfree(context);
  return ERR_PTR(err);
 }

 INIT_LIST_HEAD(&context->db_page_list);
 mutex_init(&context->db_page_mutex);

 if (ibdev->uverbs_abi_ver == MLX4_IB_UVERBS_NO_DEV_CAPS_ABI_VERSION)
  err = ib_copy_to_udata(udata, &resp_v3, sizeof(resp_v3));
 else
  err = ib_copy_to_udata(udata, &resp, sizeof(resp));

 if (err) {
  mlx4_uar_free(to_mdev(ibdev)->dev, &context->uar);
  kfree(context);
  return ERR_PTR(-EFAULT);
 }

 return &context->ibucontext;
}
