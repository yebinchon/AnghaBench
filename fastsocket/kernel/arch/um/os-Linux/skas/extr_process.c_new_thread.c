
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* jmp_buf ;
struct TYPE_3__ {unsigned long JB_IP; int JB_SP; } ;


 int UM_THREAD_SIZE ;

void new_thread(void *stack, jmp_buf *buf, void (*handler)(void))
{
 (*buf)[0].JB_IP = (unsigned long) handler;
 (*buf)[0].JB_SP = (unsigned long) stack + UM_THREAD_SIZE -
  sizeof(void *);
}
