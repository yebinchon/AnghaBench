
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_data_cache_local (int *) ;
 int flush_instruction_cache_local (int *) ;

void
flush_cache_all_local(void)
{
 flush_instruction_cache_local(((void*)0));
 flush_data_cache_local(((void*)0));
}
