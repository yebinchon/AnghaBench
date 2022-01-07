
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _sram_free (void const*,int *,int *) ;
 int free_l1_data_A_sram_head ;
 unsigned int get_cpu () ;
 int l1_data_sram_lock ;
 int per_cpu (int ,unsigned int) ;
 int put_cpu () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int used_l1_data_A_sram_head ;

int l1_data_A_sram_free(const void *addr)
{
 return -1;

}
