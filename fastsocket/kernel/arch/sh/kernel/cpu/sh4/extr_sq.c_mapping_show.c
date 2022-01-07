
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sq_mapping {int name; int addr; scalar_t__ size; scalar_t__ sq_addr; struct sq_mapping* next; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,scalar_t__,scalar_t__,int ,int ) ;
 struct sq_mapping* sq_mapping_list ;

__attribute__((used)) static ssize_t mapping_show(char *buf)
{
 struct sq_mapping **list, *entry;
 char *p = buf;

 for (list = &sq_mapping_list; (entry = *list); list = &entry->next)
  p += sprintf(p, "%08lx-%08lx [%08lx]: %s\n",
        entry->sq_addr, entry->sq_addr + entry->size,
        entry->addr, entry->name);

 return p - buf;
}
