
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_wait {struct cond_wait* next; int wait; int q; } ;


 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int set_current_state (int ) ;

__attribute__((used)) static void add_cond_wait(struct cond_wait **head, struct cond_wait *w)
{
 set_current_state(TASK_INTERRUPTIBLE);
 add_wait_queue(&w->q, &w->wait);
 w->next = *head;
 *head = w;
}
