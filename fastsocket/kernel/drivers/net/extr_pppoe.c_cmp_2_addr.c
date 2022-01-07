
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_addr {scalar_t__ sid; int remote; } ;


 int ETH_ALEN ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static inline int cmp_2_addr(struct pppoe_addr *a, struct pppoe_addr *b)
{
 return a->sid == b->sid && !memcmp(a->remote, b->remote, ETH_ALEN);
}
