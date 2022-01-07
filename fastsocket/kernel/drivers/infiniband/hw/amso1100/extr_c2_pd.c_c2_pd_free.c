
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2_pd {int pd_id; } ;
struct TYPE_2__ {int lock; int table; } ;
struct c2_dev {TYPE_1__ pd_table; } ;


 int __clear_bit (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void c2_pd_free(struct c2_dev *c2dev, struct c2_pd *pd)
{
 spin_lock(&c2dev->pd_table.lock);
 __clear_bit(pd->pd_id, c2dev->pd_table.table);
 spin_unlock(&c2dev->pd_table.lock);
}
