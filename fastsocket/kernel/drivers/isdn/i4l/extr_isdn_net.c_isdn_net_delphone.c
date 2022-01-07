
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; int num; } ;
typedef TYPE_2__ isdn_net_phone ;
struct TYPE_10__ {int outgoing; int phone; int name; } ;
typedef TYPE_3__ isdn_net_ioctl_phone ;
struct TYPE_11__ {TYPE_1__* local; } ;
typedef TYPE_4__ isdn_net_dev ;
struct TYPE_8__ {TYPE_2__** phone; TYPE_2__* dial; } ;


 int EINVAL ;
 int ENODEV ;
 TYPE_4__* isdn_net_findif (int ) ;
 int kfree (TYPE_2__*) ;
 int strcmp (int ,int ) ;

int
isdn_net_delphone(isdn_net_ioctl_phone * phone)
{
 isdn_net_dev *p = isdn_net_findif(phone->name);
 int inout = phone->outgoing & 1;
 isdn_net_phone *n;
 isdn_net_phone *m;

 if (p) {
  n = p->local->phone[inout];
  m = ((void*)0);
  while (n) {
   if (!strcmp(n->num, phone->phone)) {
    if (p->local->dial == n)
     p->local->dial = n->next;
    if (m)
     m->next = n->next;
    else
     p->local->phone[inout] = n->next;
    kfree(n);
    return 0;
   }
   m = n;
   n = (isdn_net_phone *) n->next;
  }
  return -EINVAL;
 }
 return -ENODEV;
}
