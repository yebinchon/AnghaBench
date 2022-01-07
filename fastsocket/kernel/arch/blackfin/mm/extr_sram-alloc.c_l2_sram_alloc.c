
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _sram_alloc (size_t,int *,int *) ;
 int free_l2_sram_head ;
 int l2_sram_lock ;
 int pr_debug (char*,unsigned long,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int used_l2_sram_head ;

void *l2_sram_alloc(size_t size)
{
 return ((void*)0);

}
