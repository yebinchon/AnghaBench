
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int wake_up (int *) ;

__attribute__((used)) static void wake_up_func(unsigned long data)
{
  wait_queue_head_t *sleep_wait_p = (wait_queue_head_t*)data;
  wake_up(sleep_wait_p);
}
