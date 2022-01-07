
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {int sample_lost_overflow; int sample_invalid_eip; int sample_received; } ;


 unsigned long ESCAPE_CODE ;
 int current ;
 scalar_t__ op_add_code (struct oprofile_cpu_buffer*,unsigned long,int,int ) ;
 scalar_t__ op_add_sample (struct oprofile_cpu_buffer*,unsigned long,unsigned long) ;

__attribute__((used)) static int
log_sample(struct oprofile_cpu_buffer *cpu_buf, unsigned long pc,
    unsigned long backtrace, int is_kernel, unsigned long event)
{
 cpu_buf->sample_received++;

 if (pc == ESCAPE_CODE) {
  cpu_buf->sample_invalid_eip++;
  return 0;
 }

 if (op_add_code(cpu_buf, backtrace, is_kernel, current))
  goto fail;

 if (op_add_sample(cpu_buf, pc, event))
  goto fail;

 return 1;

fail:
 cpu_buf->sample_lost_overflow++;
 return 0;
}
