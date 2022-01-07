
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_frame_info {scalar_t__ prev_sp; scalar_t__ prev_ip; scalar_t__ sp; scalar_t__ ip; TYPE_1__* t; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int dbg (char*,int,scalar_t__,scalar_t__) ;
 int unwind_frame_regs (struct unwind_frame_info*) ;

int unwind_once(struct unwind_frame_info *next_frame)
{
 unwind_frame_regs(next_frame);

 if (next_frame->prev_sp == 0 ||
     next_frame->prev_ip == 0)
  return -1;

 next_frame->sp = next_frame->prev_sp;
 next_frame->ip = next_frame->prev_ip;
 next_frame->prev_sp = 0;
 next_frame->prev_ip = 0;

 dbg("(%d) Continue unwind to sp=%08lx ip=%08lx\n",
     next_frame->t ? (int)next_frame->t->pid : -1,
     next_frame->sp, next_frame->ip);

 return 0;
}
