
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_ib {int sib_addr; } ;
struct sockaddr {int sa_family; } ;




 int ib_addr_cmp (int *,int *) ;
 int ipv6_addr_cmp (int *,int *) ;

__attribute__((used)) static int cma_addr_cmp(struct sockaddr *src, struct sockaddr *dst)
{
 if (src->sa_family != dst->sa_family)
  return -1;

 switch (src->sa_family) {
 case 129:
  return ((struct sockaddr_in *) src)->sin_addr.s_addr !=
         ((struct sockaddr_in *) dst)->sin_addr.s_addr;
 case 128:
  return ipv6_addr_cmp(&((struct sockaddr_in6 *) src)->sin6_addr,
         &((struct sockaddr_in6 *) dst)->sin6_addr);
 default:
  return ib_addr_cmp(&((struct sockaddr_ib *) src)->sib_addr,
       &((struct sockaddr_ib *) dst)->sib_addr);
 }
}
