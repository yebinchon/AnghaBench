
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pulse_elem {int head; } ;


 int DFS_POOL_STAT_DEC (int ) ;
 int list_add (int *,int *) ;
 int pool_lock ;
 int pulse_pool ;
 int pulse_used ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void pool_put_pulse_elem(struct pulse_elem *pe)
{
 spin_lock_bh(&pool_lock);
 list_add(&pe->head, &pulse_pool);
 DFS_POOL_STAT_DEC(pulse_used);
 spin_unlock_bh(&pool_lock);
}
