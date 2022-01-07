
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dword ;
struct TYPE_9__ {int channels; TYPE_3__* pIdiLib; TYPE_1__* hDbg; scalar_t__ request; } ;
typedef TYPE_2__ diva_maint_client_t ;
struct TYPE_10__ {int (* DivaSTraceSetAudioTap ) (TYPE_3__*,int,int) ;int (* DivaSTraceSetBChannel ) (TYPE_3__*,int,int) ;int (* DivaSTraceSetDChannel ) (TYPE_3__*,int) ;int (* DivaSTraceSetInfo ) (TYPE_3__*,int) ;} ;
struct TYPE_8__ {int dbgMask; } ;


 int DIVA_MGT_DBG_DCHAN ;
 int DIVA_MGT_DBG_IFC_AUDIO ;
 int DIVA_MGT_DBG_IFC_BCHANNEL ;
 int DIVA_MGT_DBG_TRACE ;
 int * TraceFilter ;
 int stub1 (TYPE_3__*,int) ;
 int stub2 (TYPE_3__*,int) ;
 int stub3 (TYPE_3__*,int,int) ;
 int stub4 (TYPE_3__*,int,int) ;

__attribute__((used)) static void diva_change_management_debug_mask (diva_maint_client_t* pC, dword old_mask) {
  if (pC->request && pC->hDbg && pC->pIdiLib) {
    dword changed = pC->hDbg->dbgMask ^ old_mask;

    if (changed & DIVA_MGT_DBG_TRACE) {
      (*(pC->pIdiLib->DivaSTraceSetInfo))(pC->pIdiLib,
                                          (pC->hDbg->dbgMask & DIVA_MGT_DBG_TRACE) != 0);
    }
    if (changed & DIVA_MGT_DBG_DCHAN) {
      (*(pC->pIdiLib->DivaSTraceSetDChannel))(pC->pIdiLib,
                                              (pC->hDbg->dbgMask & DIVA_MGT_DBG_DCHAN) != 0);
    }
    if (!TraceFilter[0]) {
      if (changed & DIVA_MGT_DBG_IFC_BCHANNEL) {
        int i, state = ((pC->hDbg->dbgMask & DIVA_MGT_DBG_IFC_BCHANNEL) != 0);

        for (i = 0; i < pC->channels; i++) {
          (*(pC->pIdiLib->DivaSTraceSetBChannel))(pC->pIdiLib, i+1, state);
        }
      }
      if (changed & DIVA_MGT_DBG_IFC_AUDIO) {
        int i, state = ((pC->hDbg->dbgMask & DIVA_MGT_DBG_IFC_AUDIO) != 0);

        for (i = 0; i < pC->channels; i++) {
          (*(pC->pIdiLib->DivaSTraceSetAudioTap))(pC->pIdiLib, i+1, state);
        }
      }
    }
  }
}
