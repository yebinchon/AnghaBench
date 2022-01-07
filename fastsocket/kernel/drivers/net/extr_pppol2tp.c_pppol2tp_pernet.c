
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_net {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 struct pppol2tp_net* net_generic (struct net*,int ) ;
 int pppol2tp_net_id ;

__attribute__((used)) static inline struct pppol2tp_net *pppol2tp_pernet(struct net *net)
{
 BUG_ON(!net);

 return net_generic(net, pppol2tp_net_id);
}
