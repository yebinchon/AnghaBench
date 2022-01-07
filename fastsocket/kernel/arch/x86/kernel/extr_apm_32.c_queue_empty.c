
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_user {scalar_t__ event_head; scalar_t__ event_tail; } ;



__attribute__((used)) static int queue_empty(struct apm_user *as)
{
 return as->event_head == as->event_tail;
}
