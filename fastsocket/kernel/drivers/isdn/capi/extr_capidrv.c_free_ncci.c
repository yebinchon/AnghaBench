
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct capidrv_ncci {size_t chan; struct capidrv_ncci* next; TYPE_1__* plcip; } ;
struct TYPE_7__ {TYPE_2__* bchans; } ;
typedef TYPE_3__ capidrv_contr ;
struct TYPE_6__ {int * nccip; } ;
struct TYPE_5__ {struct capidrv_ncci* ncci_list; } ;


 int kfree (struct capidrv_ncci*) ;

__attribute__((used)) static void free_ncci(capidrv_contr * card, struct capidrv_ncci *nccip)
{
 struct capidrv_ncci **pp;

 for (pp = &(nccip->plcip->ncci_list); *pp; pp = &(*pp)->next) {
  if (*pp == nccip) {
   *pp = (*pp)->next;
   break;
  }
 }
 card->bchans[nccip->chan].nccip = ((void*)0);
 kfree(nccip);
}
