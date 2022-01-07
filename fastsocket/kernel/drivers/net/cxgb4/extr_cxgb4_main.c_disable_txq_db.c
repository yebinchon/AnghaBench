
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int db_disabled; int db_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void disable_txq_db(struct sge_txq *q)
{
 spin_lock_irq(&q->db_lock);
 q->db_disabled = 1;
 spin_unlock_irq(&q->db_lock);
}
