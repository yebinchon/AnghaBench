
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
struct TYPE_8__ {TYPE_2__** phone; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_4__* isdn_net_findif (int ) ;
 TYPE_2__* kmalloc (int,int ) ;
 int strlcpy (int ,int ,int) ;

int
isdn_net_addphone(isdn_net_ioctl_phone * phone)
{
 isdn_net_dev *p = isdn_net_findif(phone->name);
 isdn_net_phone *n;

 if (p) {
  if (!(n = kmalloc(sizeof(isdn_net_phone), GFP_KERNEL)))
   return -ENOMEM;
  strlcpy(n->num, phone->phone, sizeof(n->num));
  n->next = p->local->phone[phone->outgoing & 1];
  p->local->phone[phone->outgoing & 1] = n;
  return 0;
 }
 return -ENODEV;
}
