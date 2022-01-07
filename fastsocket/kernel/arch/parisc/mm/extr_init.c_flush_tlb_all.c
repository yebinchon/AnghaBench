
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_all_local (int *) ;
 int recycle_sids () ;
 int sid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void flush_tlb_all(void)
{
 spin_lock(&sid_lock);
 flush_tlb_all_local(((void*)0));
 recycle_sids();
 spin_unlock(&sid_lock);
}
