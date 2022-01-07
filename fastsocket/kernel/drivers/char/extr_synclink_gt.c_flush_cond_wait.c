
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_wait {struct cond_wait* next; int q; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void flush_cond_wait(struct cond_wait **head)
{
 while (*head != ((void*)0)) {
  wake_up_interruptible(&(*head)->q);
  *head = (*head)->next;
 }
}
