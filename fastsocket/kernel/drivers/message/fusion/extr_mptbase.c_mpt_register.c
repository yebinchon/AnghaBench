
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int MPT_DRIVER_CLASS ;
typedef int * MPT_CALLBACK ;


 scalar_t__ MPT_MAX_CALLBACKNAME_LEN ;
 int MPT_MAX_PROTOCOL_DRIVERS ;
 int ** MptCallbacks ;
 int * MptCallbacksName ;
 int * MptDriverClass ;
 int ** MptEvHandlers ;
 int last_drv_idx ;
 int strlcpy (int ,char*,scalar_t__) ;

u8
mpt_register(MPT_CALLBACK cbfunc, MPT_DRIVER_CLASS dclass, char *func_name)
{
 u8 cb_idx;
 last_drv_idx = MPT_MAX_PROTOCOL_DRIVERS;





 for (cb_idx = MPT_MAX_PROTOCOL_DRIVERS-1; cb_idx; cb_idx--) {
  if (MptCallbacks[cb_idx] == ((void*)0)) {
   MptCallbacks[cb_idx] = cbfunc;
   MptDriverClass[cb_idx] = dclass;
   MptEvHandlers[cb_idx] = ((void*)0);
   last_drv_idx = cb_idx;
   strlcpy(MptCallbacksName[cb_idx], func_name,
    MPT_MAX_CALLBACKNAME_LEN+1);
   break;
  }
 }

 return last_drv_idx;
}
