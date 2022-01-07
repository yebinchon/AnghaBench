
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int * reg_window; int * rwbuf_stkptrs; } ;
struct reg_window {int dummy; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void shift_window_buffer(int first_win, int last_win,
           struct thread_info *t)
{
 int i;

 for (i = first_win; i < last_win; i++) {
  t->rwbuf_stkptrs[i] = t->rwbuf_stkptrs[i+1];
  memcpy(&t->reg_window[i], &t->reg_window[i+1],
         sizeof(struct reg_window));
 }
}
