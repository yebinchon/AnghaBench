
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int module; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 int DisplayDescRing (void*,int (*) (char const*)) ;
 int DisplayRegisterContents (int ,int ,int (*) (char const*)) ;
 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;

void dmacHw_printDebugInfo(dmacHw_HANDLE_t handle,
      void *pDescriptor,
      int (*fpPrint) (const char *, ...)
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);

 DisplayRegisterContents(pCblk->module, pCblk->channel, fpPrint);
 DisplayDescRing(pDescriptor, fpPrint);
}
