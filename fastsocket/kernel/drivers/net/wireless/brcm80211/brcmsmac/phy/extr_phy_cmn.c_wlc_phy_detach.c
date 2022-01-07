
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct TYPE_4__ {int (* detach ) (struct brcms_phy*) ;} ;
struct brcms_phy {TYPE_2__ pi_fptr; struct brcms_phy* next; TYPE_1__* sh; int * phycal_timer; scalar_t__ refcnt; } ;
struct TYPE_3__ {struct brcms_phy* phy_head; } ;


 int kfree (struct brcms_phy*) ;
 int stub1 (struct brcms_phy*) ;
 int wlapi_free_timer (int *) ;

void wlc_phy_detach(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (pih) {
  if (--pi->refcnt)
   return;

  if (pi->phycal_timer) {
   wlapi_free_timer(pi->phycal_timer);
   pi->phycal_timer = ((void*)0);
  }

  if (pi->sh->phy_head == pi)
   pi->sh->phy_head = pi->next;
  else if (pi->sh->phy_head->next == pi)
   pi->sh->phy_head->next = ((void*)0);

  if (pi->pi_fptr.detach)
   (pi->pi_fptr.detach)(pi);

  kfree(pi);
 }
}
