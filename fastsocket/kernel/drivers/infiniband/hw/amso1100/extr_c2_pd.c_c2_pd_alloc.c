
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct c2_pd {scalar_t__ pd_id; } ;
struct TYPE_2__ {scalar_t__ max; scalar_t__ last; int lock; int table; } ;
struct c2_dev {TYPE_1__ pd_table; } ;


 int ENOMEM ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 scalar_t__ find_next_zero_bit (int ,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int c2_pd_alloc(struct c2_dev *c2dev, int privileged, struct c2_pd *pd)
{
 u32 obj;
 int ret = 0;

 spin_lock(&c2dev->pd_table.lock);
 obj = find_next_zero_bit(c2dev->pd_table.table, c2dev->pd_table.max,
     c2dev->pd_table.last);
 if (obj >= c2dev->pd_table.max)
  obj = find_first_zero_bit(c2dev->pd_table.table,
       c2dev->pd_table.max);
 if (obj < c2dev->pd_table.max) {
  pd->pd_id = obj;
  __set_bit(obj, c2dev->pd_table.table);
  c2dev->pd_table.last = obj+1;
  if (c2dev->pd_table.last >= c2dev->pd_table.max)
   c2dev->pd_table.last = 0;
 } else
  ret = -ENOMEM;
 spin_unlock(&c2dev->pd_table.lock);
 return ret;
}
