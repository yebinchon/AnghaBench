
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ocrdma_dev {int eq_cnt; int dev_lock; TYPE_2__* qp_eq_tbl; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {int cq_cnt; TYPE_1__ q; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ocrdma_unbind_eq(struct ocrdma_dev *dev, u16 eq_id)
{
 int i;

 mutex_lock(&dev->dev_lock);
 for (i = 0; i < dev->eq_cnt; i++) {
  if (dev->qp_eq_tbl[i].q.id != eq_id)
   continue;
  dev->qp_eq_tbl[i].cq_cnt -= 1;
  break;
 }
 mutex_unlock(&dev->dev_lock);
}
