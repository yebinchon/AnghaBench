
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote; int sid; } ;
struct pppox_sock {scalar_t__ pppoe_ifindex; struct pppox_sock* next; TYPE_1__ pppoe_pa; } ;
struct pppoe_net {struct pppox_sock** hash_table; } ;


 int EALREADY ;
 scalar_t__ cmp_2_addr (TYPE_1__*,TYPE_1__*) ;
 int hash_item (int ,int ) ;

__attribute__((used)) static int __set_item(struct pppoe_net *pn, struct pppox_sock *po)
{
 int hash = hash_item(po->pppoe_pa.sid, po->pppoe_pa.remote);
 struct pppox_sock *ret;

 ret = pn->hash_table[hash];
 while (ret) {
  if (cmp_2_addr(&ret->pppoe_pa, &po->pppoe_pa) &&
      ret->pppoe_ifindex == po->pppoe_ifindex)
   return -EALREADY;

  ret = ret->next;
 }

 po->next = pn->hash_table[hash];
 pn->hash_table[hash] = po;

 return 0;
}
