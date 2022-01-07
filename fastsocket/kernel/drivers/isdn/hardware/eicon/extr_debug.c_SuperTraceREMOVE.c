
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int PLength; int * P; } ;
struct TYPE_7__ {int request_pending; scalar_t__* xbuffer; TYPE_2__ XData; TYPE_1__* pIdiLib; scalar_t__ request; } ;
typedef TYPE_3__ diva_maint_client_t ;
typedef int byte ;
struct TYPE_8__ {int XNum; TYPE_2__* X; scalar_t__ ReqCh; int Req; } ;
struct TYPE_5__ {int hLib; scalar_t__ (* DivaSTraceGetHandle ) (int ) ;} ;
typedef TYPE_4__ ENTITY ;


 int REMOVE ;
 scalar_t__ stub1 (int ) ;

int SuperTraceREMOVE (void* AdapterHandle) {
  diva_maint_client_t* pC = (diva_maint_client_t*)AdapterHandle;

  if (pC && pC->pIdiLib && pC->request) {
    ENTITY* e = (ENTITY*)(*(pC->pIdiLib->DivaSTraceGetHandle))(pC->pIdiLib->hLib);

    e->XNum = 1;
    e->X = &pC->XData;
    e->Req = REMOVE;
    e->ReqCh = 0;
    e->X->PLength = 1;
    e->X->P = (byte*)&pC->xbuffer[0];
    pC->xbuffer[0] = 0;

    pC->request_pending = 1;

    return (0);
  }

  return (-1);
}
