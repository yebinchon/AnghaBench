
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppox_sock {int dummy; } ;
struct pppoe_net {int hash_lock; } ;
typedef int __be16 ;


 struct pppox_sock* __delete_item (struct pppoe_net*,int ,char*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline struct pppox_sock *delete_item(struct pppoe_net *pn, __be16 sid,
     char *addr, int ifindex)
{
 struct pppox_sock *ret;

 write_lock_bh(&pn->hash_lock);
 ret = __delete_item(pn, sid, addr, ifindex);
 write_unlock_bh(&pn->hash_lock);

 return ret;
}
