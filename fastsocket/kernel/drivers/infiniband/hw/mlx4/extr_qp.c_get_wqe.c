
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_qp {int buf; } ;


 void* mlx4_buf_offset (int *,int) ;

__attribute__((used)) static void *get_wqe(struct mlx4_ib_qp *qp, int offset)
{
 return mlx4_buf_offset(&qp->buf, offset);
}
