
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {int dummy; } ;
struct op_sample {unsigned long eip; unsigned long event; } ;
struct op_entry {int dummy; } ;


 int ENOMEM ;
 int op_cpu_buffer_write_commit (struct op_entry*) ;
 struct op_sample* op_cpu_buffer_write_reserve (struct op_entry*,int ) ;

__attribute__((used)) static inline int
op_add_sample(struct oprofile_cpu_buffer *cpu_buf,
       unsigned long pc, unsigned long event)
{
 struct op_entry entry;
 struct op_sample *sample;

 sample = op_cpu_buffer_write_reserve(&entry, 0);
 if (!sample)
  return -ENOMEM;

 sample->eip = pc;
 sample->event = event;

 return op_cpu_buffer_write_commit(&entry);
}
