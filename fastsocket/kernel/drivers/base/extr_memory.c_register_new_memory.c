
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_section {int dummy; } ;


 int HOTPLUG ;
 int MEM_OFFLINE ;
 int add_memory_section (int,struct mem_section*,int ,int ) ;

int register_new_memory(int nid, struct mem_section *section)
{
 return add_memory_section(nid, section, MEM_OFFLINE, HOTPLUG);
}
