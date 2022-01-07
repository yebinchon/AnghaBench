
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short* addr; unsigned short inst; } ;
struct TYPE_4__ {TYPE_1__ breakinfo; } ;
struct task_struct {TYPE_2__ thread; } ;



void h8300_disable_trace(struct task_struct *child)
{
 if((long)child->thread.breakinfo.addr != -1L) {
  *child->thread.breakinfo.addr = child->thread.breakinfo.inst;
  child->thread.breakinfo.addr = (unsigned short *)-1L;
 }
}
