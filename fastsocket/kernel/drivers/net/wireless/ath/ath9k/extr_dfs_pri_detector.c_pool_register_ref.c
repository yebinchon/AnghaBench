
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFS_POOL_STAT_INC (int ) ;
 int pool_lock ;
 int pool_reference ;
 int singleton_pool_references ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void pool_register_ref(void)
{
 spin_lock_bh(&pool_lock);
 singleton_pool_references++;
 DFS_POOL_STAT_INC(pool_reference);
 spin_unlock_bh(&pool_lock);
}
