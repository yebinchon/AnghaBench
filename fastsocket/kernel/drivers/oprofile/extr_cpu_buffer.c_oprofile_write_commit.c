
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int event; } ;


 int EINVAL ;
 int op_cpu_buffer_write_commit (struct op_entry*) ;

int oprofile_write_commit(struct op_entry *entry)
{
 if (!entry->event)
  return -EINVAL;
 return op_cpu_buffer_write_commit(entry);
}
