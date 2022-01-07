
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_section {int dummy; } ;


 int EINVAL ;
 int present_section (struct mem_section*) ;
 int remove_memory_block (int ,struct mem_section*,int ) ;

int unregister_memory_section(struct mem_section *section)
{
 if (!present_section(section))
  return -EINVAL;

 return remove_memory_block(0, section, 0);
}
