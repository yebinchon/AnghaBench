
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx4_ib_srq {int tail; int lock; } ;


 int cpu_to_be16 (int) ;
 struct mlx4_wqe_srq_next_seg* get_wqe (struct mlx4_ib_srq*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx4_ib_free_srq_wqe(struct mlx4_ib_srq *srq, int wqe_index)
{
 struct mlx4_wqe_srq_next_seg *next;


 spin_lock(&srq->lock);

 next = get_wqe(srq, srq->tail);
 next->next_wqe_index = cpu_to_be16(wqe_index);
 srq->tail = wqe_index;

 spin_unlock(&srq->lock);
}
