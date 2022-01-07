
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _sram_alloc (size_t,int *,int *) ;
 int free_l1_data_B_sram_head ;
 unsigned int get_cpu () ;
 int l1_data_sram_lock ;
 int per_cpu (int ,unsigned int) ;
 int pr_debug (char*,unsigned long,size_t) ;
 int put_cpu () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int used_l1_data_B_sram_head ;

void *l1_data_B_sram_alloc(size_t size)
{
 return ((void*)0);

}
