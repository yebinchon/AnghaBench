
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct proto {int dummy; } ;
struct ppp {struct proto* protos; } ;
struct net_device {int dummy; } ;


 size_t IDX_IPCP ;
 size_t IDX_IPV6CP ;
 size_t IDX_LCP ;



 struct ppp* get_ppp (struct net_device*) ;

__attribute__((used)) static inline struct proto* get_proto(struct net_device *dev, u16 pid)
{
 struct ppp *ppp = get_ppp(dev);

 switch (pid) {
 case 128:
  return &ppp->protos[IDX_LCP];
 case 130:
  return &ppp->protos[IDX_IPCP];
 case 129:
  return &ppp->protos[IDX_IPV6CP];
 default:
  return ((void*)0);
 }
}
