
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_wait {struct cond_wait* next; int wait; int q; } ;


 int TASK_RUNNING ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int ) ;

__attribute__((used)) static void remove_cond_wait(struct cond_wait **head, struct cond_wait *cw)
{
 struct cond_wait *w, *prev;
 remove_wait_queue(&cw->q, &cw->wait);
 set_current_state(TASK_RUNNING);
 for (w = *head, prev = ((void*)0) ; w != ((void*)0) ; prev = w, w = w->next) {
  if (w == cw) {
   if (prev != ((void*)0))
    prev->next = w->next;
   else
    *head = w->next;
   break;
  }
 }
}
