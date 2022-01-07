
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmacHw_HANDLE_t ;
struct TYPE_3__ {void* userData; } ;
typedef TYPE_1__ dmacHw_CBLK_t ;


 TYPE_1__* dmacHw_HANDLE_TO_CBLK (int ) ;

void dmacHw_setChannelUserData(dmacHw_HANDLE_t handle,
          void *userData
    ) {
 dmacHw_CBLK_t *pCblk = dmacHw_HANDLE_TO_CBLK(handle);

 pCblk->userData = userData;
}
