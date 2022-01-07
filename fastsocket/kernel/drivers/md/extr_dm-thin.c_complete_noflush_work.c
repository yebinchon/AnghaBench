
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noflush_work {int wait; int complete; } ;


 int atomic_set (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void complete_noflush_work(struct noflush_work *w)
{
 atomic_set(&w->complete, 1);
 wake_up(&w->wait);
}
