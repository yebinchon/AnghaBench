
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr_ib {int sib_sid_mask; int sib_sid; } ;
struct sockaddr {int sa_family; } ;
typedef int __be16 ;





 int be64_to_cpu (int ) ;
 int htons (int ) ;

__attribute__((used)) static __be16 cma_port(struct sockaddr *addr)
{
 struct sockaddr_ib *sib;

 switch (addr->sa_family) {
 case 129:
  return ((struct sockaddr_in *) addr)->sin_port;
 case 128:
  return ((struct sockaddr_in6 *) addr)->sin6_port;
 case 130:
  sib = (struct sockaddr_ib *) addr;
  return htons((u16) (be64_to_cpu(sib->sib_sid) &
        be64_to_cpu(sib->sib_sid_mask)));
 default:
  return 0;
 }
}
