
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct mlx4_ib_cq_buf {int mtt; } ;
struct ib_umem {int page_size; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_4__ {int cqe_size; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 scalar_t__ IS_ERR (struct ib_umem*) ;
 int PTR_ERR (struct ib_umem*) ;
 struct ib_umem* ib_umem_get (struct ib_ucontext*,int ,int,int ,int) ;
 int ib_umem_page_count (struct ib_umem*) ;
 int ib_umem_release (struct ib_umem*) ;
 int ilog2 (int ) ;
 int mlx4_ib_umem_write_mtt (struct mlx4_ib_dev*,int *,struct ib_umem*) ;
 int mlx4_mtt_cleanup (TYPE_2__*,int *) ;
 int mlx4_mtt_init (TYPE_2__*,int ,int ,int *) ;

__attribute__((used)) static int mlx4_ib_get_cq_umem(struct mlx4_ib_dev *dev, struct ib_ucontext *context,
          struct mlx4_ib_cq_buf *buf, struct ib_umem **umem,
          u64 buf_addr, int cqe)
{
 int err;
 int cqe_size = dev->dev->caps.cqe_size;

 *umem = ib_umem_get(context, buf_addr, cqe * cqe_size,
       IB_ACCESS_LOCAL_WRITE, 1);
 if (IS_ERR(*umem))
  return PTR_ERR(*umem);

 err = mlx4_mtt_init(dev->dev, ib_umem_page_count(*umem),
       ilog2((*umem)->page_size), &buf->mtt);
 if (err)
  goto err_buf;

 err = mlx4_ib_umem_write_mtt(dev, &buf->mtt, *umem);
 if (err)
  goto err_mtt;

 return 0;

err_mtt:
 mlx4_mtt_cleanup(dev->dev, &buf->mtt);

err_buf:
 ib_umem_release(*umem);

 return err;
}
