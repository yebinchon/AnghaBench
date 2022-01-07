
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_net {int units_idr; } ;
struct ppp {int dummy; } ;


 struct ppp* unit_find (int *,int) ;

__attribute__((used)) static struct ppp *
ppp_find_unit(struct ppp_net *pn, int unit)
{
 return unit_find(&pn->units_idr, unit);
}
