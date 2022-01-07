
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int size; unsigned long* data; } ;



__attribute__((used)) static inline
int op_cpu_buffer_add_data(struct op_entry *entry, unsigned long val)
{
 if (!entry->size)
  return 0;
 *entry->data = val;
 entry->size--;
 entry->data++;
 return entry->size;
}
