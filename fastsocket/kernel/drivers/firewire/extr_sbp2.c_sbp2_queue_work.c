
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_logical_unit {TYPE_1__* tgt; int work; } ;
struct TYPE_2__ {int kref; } ;


 int kref_get (int *) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int sbp2_target_put (TYPE_1__*) ;
 int sbp2_wq ;

__attribute__((used)) static void sbp2_queue_work(struct sbp2_logical_unit *lu, unsigned long delay)
{
 kref_get(&lu->tgt->kref);
 if (!queue_delayed_work(sbp2_wq, &lu->work, delay))
  sbp2_target_put(lu->tgt);
}
