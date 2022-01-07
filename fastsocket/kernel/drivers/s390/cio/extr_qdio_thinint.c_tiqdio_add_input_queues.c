
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sync; } ;
struct qdio_irq {int nr_input_qs; int dsci; TYPE_2__** input_qs; TYPE_1__ siga_flag; } ;
struct TYPE_4__ {int entry; } ;


 int BUG_ON (int) ;
 int css_qdio_omit_svs ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tiq_list ;
 int tiq_list_lock ;
 int xchg (int ,int) ;

void tiqdio_add_input_queues(struct qdio_irq *irq_ptr)
{

 if (!css_qdio_omit_svs && irq_ptr->siga_flag.sync)
  css_qdio_omit_svs = 1;

 mutex_lock(&tiq_list_lock);
 BUG_ON(irq_ptr->nr_input_qs < 1);
 list_add_rcu(&irq_ptr->input_qs[0]->entry, &tiq_list);
 mutex_unlock(&tiq_list_lock);
 xchg(irq_ptr->dsci, 1);
}
