
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_addr {scalar_t__ sid; int remote; } ;
typedef scalar_t__ __be16 ;


 int ETH_ALEN ;
 int memcmp (int ,char*,int ) ;

__attribute__((used)) static inline int cmp_addr(struct pppoe_addr *a, __be16 sid, char *addr)
{
 return a->sid == sid && !memcmp(a->remote, addr, ETH_ALEN);
}
