
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_mm; } ;



__attribute__((used)) static inline int is_kernel_context(struct gru_thread_state *gts)
{
 return !gts->ts_mm;
}
