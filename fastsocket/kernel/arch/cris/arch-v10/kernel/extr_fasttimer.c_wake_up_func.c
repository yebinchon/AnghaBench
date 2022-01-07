
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct wait_queue {int dummy; } ;


 int wake_up (struct wait_queue**) ;

__attribute__((used)) static void wake_up_func(unsigned long data)
{



  struct wait_queue **sleep_wait_p = (struct wait_queue **)data;

  wake_up(sleep_wait_p);
}
