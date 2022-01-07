
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {TYPE_2__* ncci_list; } ;
typedef TYPE_1__ capidrv_plci ;
struct TYPE_6__ {scalar_t__ ncci; struct TYPE_6__* next; } ;
typedef TYPE_2__ capidrv_ncci ;
typedef int capidrv_contr ;


 TYPE_1__* find_plci_by_ncci (int *,scalar_t__) ;

__attribute__((used)) static inline capidrv_ncci *find_ncci(capidrv_contr * card, u32 ncci)
{
 capidrv_plci *plcip;
 capidrv_ncci *p;

 if ((plcip = find_plci_by_ncci(card, ncci)) == ((void*)0))
  return ((void*)0);

 for (p = plcip->ncci_list; p; p = p->next)
  if (p->ncci == ncci)
   return p;
 return ((void*)0);
}
