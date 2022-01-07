
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ dlci; struct TYPE_4__* next; } ;
typedef TYPE_1__ pvc_device ;
typedef int hdlc_device ;
struct TYPE_5__ {TYPE_1__* first_pvc; } ;


 TYPE_2__* state (int *) ;

__attribute__((used)) static inline pvc_device* find_pvc(hdlc_device *hdlc, u16 dlci)
{
 pvc_device *pvc = state(hdlc)->first_pvc;

 while (pvc) {
  if (pvc->dlci == dlci)
   return pvc;
  if (pvc->dlci > dlci)
   return ((void*)0);
  pvc = pvc->next;
 }

 return ((void*)0);
}
