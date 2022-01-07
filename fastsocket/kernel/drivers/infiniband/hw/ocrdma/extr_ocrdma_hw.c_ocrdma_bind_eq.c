
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_dev {int eq_cnt; int dev_lock; TYPE_2__* qp_eq_tbl; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {int cq_cnt; TYPE_1__ q; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u16 ocrdma_bind_eq(struct ocrdma_dev *dev)
{
 int i, selected_eq = 0, cq_cnt = 0;
 u16 eq_id;

 mutex_lock(&dev->dev_lock);
 cq_cnt = dev->qp_eq_tbl[0].cq_cnt;
 eq_id = dev->qp_eq_tbl[0].q.id;



 for (i = 0; i < dev->eq_cnt; i++) {
  if (dev->qp_eq_tbl[i].cq_cnt < cq_cnt) {
   cq_cnt = dev->qp_eq_tbl[i].cq_cnt;
   eq_id = dev->qp_eq_tbl[i].q.id;
   selected_eq = i;
  }
 }
 dev->qp_eq_tbl[selected_eq].cq_cnt += 1;
 mutex_unlock(&dev->dev_lock);
 return eq_id;
}
