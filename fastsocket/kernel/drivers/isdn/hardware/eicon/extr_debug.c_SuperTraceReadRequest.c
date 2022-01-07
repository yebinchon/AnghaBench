
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int word ;
struct TYPE_7__ {int request_pending; int * xbuffer; TYPE_1__* pIdiLib; scalar_t__ request; } ;
typedef TYPE_3__ diva_maint_client_t ;
typedef int byte ;
struct TYPE_8__ {TYPE_2__* X; scalar_t__ ReqCh; int Req; } ;
struct TYPE_6__ {int * P; int PLength; } ;
struct TYPE_5__ {int hLib; scalar_t__ (* DivaSTraceGetHandle ) (int ) ;} ;
typedef TYPE_4__ ENTITY ;


 int MAN_READ ;
 int SuperTraceCreateReadReq (int *,char const*) ;
 int single_p (int *,int *,int ) ;
 int strcmp (char const*,char*) ;
 scalar_t__ stub1 (int ) ;

int SuperTraceReadRequest (void* AdapterHandle, const char* name, byte* data) {
  diva_maint_client_t* pC = (diva_maint_client_t*)AdapterHandle;

  if (pC && pC->pIdiLib && pC->request) {
    ENTITY* e = (ENTITY*)(*(pC->pIdiLib->DivaSTraceGetHandle))(pC->pIdiLib->hLib);
    byte* xdata = (byte*)&pC->xbuffer[0];
    char tmp = 0;
    word length;

    if (!strcmp(name, "\\")) {
      name = &tmp;
    }
    length = SuperTraceCreateReadReq (xdata, name);
    single_p (xdata, &length, 0);

    e->Req = MAN_READ;
    e->ReqCh = 0;
    e->X->PLength = length;
    e->X->P = (byte*)xdata;

    pC->request_pending = 1;

    return (0);
  }

  return (-1);
}
