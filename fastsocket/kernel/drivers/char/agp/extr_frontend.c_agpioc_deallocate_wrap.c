
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;
struct agp_file_private {int dummy; } ;


 int DBG (char*) ;
 int EINVAL ;
 struct agp_memory* agp_find_mem_by_key (int) ;
 int agp_free_memory_wrap (struct agp_memory*) ;

int agpioc_deallocate_wrap(struct agp_file_private *priv, int arg)
{
 struct agp_memory *memory;

 DBG("");
 memory = agp_find_mem_by_key(arg);

 if (memory == ((void*)0))
  return -EINVAL;

 agp_free_memory_wrap(memory);
 return 0;
}
