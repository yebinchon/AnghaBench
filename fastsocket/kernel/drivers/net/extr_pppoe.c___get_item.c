
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppox_sock {int pppoe_ifindex; struct pppox_sock* next; int pppoe_pa; } ;
struct pppoe_net {struct pppox_sock** hash_table; } ;
typedef int __be16 ;


 scalar_t__ cmp_addr (int *,int ,unsigned char*) ;
 int hash_item (int ,unsigned char*) ;

__attribute__((used)) static struct pppox_sock *__get_item(struct pppoe_net *pn, __be16 sid,
    unsigned char *addr, int ifindex)
{
 int hash = hash_item(sid, addr);
 struct pppox_sock *ret;

 ret = pn->hash_table[hash];
 while (ret) {
  if (cmp_addr(&ret->pppoe_pa, sid, addr) &&
      ret->pppoe_ifindex == ifindex)
   return ret;

  ret = ret->next;
 }

 return ((void*)0);
}
