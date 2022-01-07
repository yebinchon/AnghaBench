
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_entry {int size; unsigned long* data; } ;



__attribute__((used)) static inline
int op_cpu_buffer_get_data(struct op_entry *entry, unsigned long *val)
{
 int size = entry->size;
 if (!size)
  return 0;
 *val = *entry->data;
 entry->size--;
 entry->data++;
 return size;
}
