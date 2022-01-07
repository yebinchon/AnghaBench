
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_cpu_buffer {scalar_t__ tracing; } ;



__attribute__((used)) static inline void oprofile_end_trace(struct oprofile_cpu_buffer *cpu_buf)
{
 cpu_buf->tracing = 0;
}
