
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_chunk {int dummy; } ;


 int MEMORY_CHUNKS ;
 int __ctl_clear_bit (int ,int) ;
 int __ctl_load (unsigned long,int ,int ) ;
 int __ctl_store (unsigned long,int ,int ) ;
 int __raw_local_irq_ssm (unsigned long) ;
 unsigned long __raw_local_irq_stnsm (int) ;
 int find_memory_chunks (struct mem_chunk*) ;
 int memset (struct mem_chunk*,int ,int) ;

void detect_memory_layout(struct mem_chunk chunk[])
{
 unsigned long flags, cr0;

 memset(chunk, 0, MEMORY_CHUNKS * sizeof(struct mem_chunk));




 flags = __raw_local_irq_stnsm(0xf8);
 __ctl_store(cr0, 0, 0);
 __ctl_clear_bit(0, 28);
 find_memory_chunks(chunk);
 __ctl_load(cr0, 0, 0);
 __raw_local_irq_ssm(flags);
}
