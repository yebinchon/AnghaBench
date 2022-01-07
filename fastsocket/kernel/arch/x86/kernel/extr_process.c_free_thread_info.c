
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int task; } ;


 int THREAD_SIZE ;
 int free_pages (unsigned long,int ) ;
 int free_thread_xstate (int ) ;
 int get_order (int ) ;

void free_thread_info(struct thread_info *ti)
{
 free_thread_xstate(ti->task);
 free_pages((unsigned long)ti, get_order(THREAD_SIZE));
}
