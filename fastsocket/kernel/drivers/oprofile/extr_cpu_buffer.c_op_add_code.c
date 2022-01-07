
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct oprofile_cpu_buffer {int last_is_kernel; struct task_struct* last_task; } ;
struct op_sample {unsigned long event; int eip; } ;
struct op_entry {int dummy; } ;


 int ENOMEM ;
 int ESCAPE_CODE ;
 unsigned long IS_KERNEL ;
 unsigned long KERNEL_CTX_SWITCH ;
 unsigned long TRACE_BEGIN ;
 unsigned long USER_CTX_SWITCH ;
 int op_cpu_buffer_add_data (struct op_entry*,unsigned long) ;
 int op_cpu_buffer_write_commit (struct op_entry*) ;
 struct op_sample* op_cpu_buffer_write_reserve (struct op_entry*,int) ;

__attribute__((used)) static int
op_add_code(struct oprofile_cpu_buffer *cpu_buf, unsigned long backtrace,
     int is_kernel, struct task_struct *task)
{
 struct op_entry entry;
 struct op_sample *sample;
 unsigned long flags;
 int size;

 flags = 0;

 if (backtrace)
  flags |= TRACE_BEGIN;


 is_kernel = !!is_kernel;
 if (cpu_buf->last_is_kernel != is_kernel) {
  cpu_buf->last_is_kernel = is_kernel;
  flags |= KERNEL_CTX_SWITCH;
  if (is_kernel)
   flags |= IS_KERNEL;
 }


 if (cpu_buf->last_task != task) {
  cpu_buf->last_task = task;
  flags |= USER_CTX_SWITCH;
 }

 if (!flags)

  return 0;

 if (flags & USER_CTX_SWITCH)
  size = 1;
 else
  size = 0;

 sample = op_cpu_buffer_write_reserve(&entry, size);
 if (!sample)
  return -ENOMEM;

 sample->eip = ESCAPE_CODE;
 sample->event = flags;

 if (size)
  op_cpu_buffer_add_data(&entry, (unsigned long)task);

 op_cpu_buffer_write_commit(&entry);

 return 0;
}
