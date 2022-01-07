
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t word ;
struct TYPE_8__ {size_t length; size_t value_length; size_t type; } ;
typedef TYPE_3__ diva_man_var_header_t ;
struct TYPE_9__ {int request_pending; int * xbuffer; TYPE_1__* pIdiLib; scalar_t__ request; } ;
typedef TYPE_4__ diva_maint_client_t ;
typedef size_t byte ;
struct TYPE_10__ {TYPE_2__* X; scalar_t__ ReqCh; int Req; } ;
struct TYPE_7__ {size_t PLength; size_t* P; } ;
struct TYPE_6__ {int hLib; scalar_t__ (* DivaSTraceGetHandle ) (int ) ;} ;
typedef TYPE_5__ ENTITY ;


 int MAN_WRITE ;
 size_t SuperTraceCreateReadReq (size_t*,char const*) ;
 int memcpy (int *,void*,size_t) ;
 int single_p (size_t*,size_t*,int ) ;
 scalar_t__ stub1 (int ) ;

int SuperTraceWriteVar (void* AdapterHandle,
                        byte* data,
                        const char* name,
                        void* var,
                        byte type,
                        byte var_length) {
  diva_maint_client_t* pC = (diva_maint_client_t*)AdapterHandle;

  if (pC && pC->pIdiLib && pC->request) {
    ENTITY* e = (ENTITY*)(*(pC->pIdiLib->DivaSTraceGetHandle))(pC->pIdiLib->hLib);
    diva_man_var_header_t* pVar = (diva_man_var_header_t*)&pC->xbuffer[0];
    word length = SuperTraceCreateReadReq ((byte*)pVar, name);

    memcpy (&pC->xbuffer[length], var, var_length);
    length += var_length;
    pVar->length += var_length;
    pVar->value_length = var_length;
    pVar->type = type;
    single_p ((byte*)pVar, &length, 0);

    e->Req = MAN_WRITE;
    e->ReqCh = 0;
    e->X->PLength = length;
    e->X->P = (byte*)pVar;

    pC->request_pending = 1;

    return (0);
  }

  return (-1);
}
