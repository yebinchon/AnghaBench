
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;


 int atomic_inc (int *) ;
 int md_event_count ;
 int md_event_waiters ;
 int wake_up (int *) ;

__attribute__((used)) static void md_new_event_inintr(struct mddev *mddev)
{
 atomic_inc(&md_event_count);
 wake_up(&md_event_waiters);
}
