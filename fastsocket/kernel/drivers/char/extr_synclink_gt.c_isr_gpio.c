
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {struct cond_wait* gpio_wait_q; } ;
struct cond_wait {unsigned int data; struct cond_wait* next; int q; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void isr_gpio(struct slgt_info *info, unsigned int changed, unsigned int state)
{
 struct cond_wait *w, *prev;


 for (w = info->gpio_wait_q, prev = ((void*)0) ; w != ((void*)0) ; w = w->next) {
  if (w->data & changed) {
   w->data = state;
   wake_up_interruptible(&w->q);
   if (prev != ((void*)0))
    prev->next = w->next;
   else
    info->gpio_wait_q = w->next;
  } else
   prev = w;
 }
}
