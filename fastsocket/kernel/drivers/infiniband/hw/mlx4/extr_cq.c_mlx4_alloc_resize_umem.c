
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_ib_resize_cq {int buf_addr; } ;
struct mlx4_ib_dev {int dummy; } ;
struct mlx4_ib_cq {TYPE_2__* resize_buf; scalar_t__ resize_umem; TYPE_1__* umem; } ;
struct ib_udata {int dummy; } ;
struct TYPE_5__ {int cqe; int buf; } ;
struct TYPE_4__ {int context; } ;


 int EBUSY ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ ib_copy_from_udata (struct mlx4_ib_resize_cq*,struct ib_udata*,int) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 int mlx4_ib_get_cq_umem (struct mlx4_ib_dev*,int ,int *,scalar_t__*,int ,int) ;

__attribute__((used)) static int mlx4_alloc_resize_umem(struct mlx4_ib_dev *dev, struct mlx4_ib_cq *cq,
       int entries, struct ib_udata *udata)
{
 struct mlx4_ib_resize_cq ucmd;
 int err;

 if (cq->resize_umem)
  return -EBUSY;

 if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd))
  return -EFAULT;

 cq->resize_buf = kmalloc(sizeof *cq->resize_buf, GFP_ATOMIC);
 if (!cq->resize_buf)
  return -ENOMEM;

 err = mlx4_ib_get_cq_umem(dev, cq->umem->context, &cq->resize_buf->buf,
      &cq->resize_umem, ucmd.buf_addr, entries);
 if (err) {
  kfree(cq->resize_buf);
  cq->resize_buf = ((void*)0);
  return err;
 }

 cq->resize_buf->cqe = entries - 1;

 return 0;
}
