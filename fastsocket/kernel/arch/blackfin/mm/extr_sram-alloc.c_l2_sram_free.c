
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _sram_free (void const*,int *,int *) ;
 int free_l2_sram_head ;
 int l2_sram_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int used_l2_sram_head ;

int l2_sram_free(const void *addr)
{
 return -1;

}
