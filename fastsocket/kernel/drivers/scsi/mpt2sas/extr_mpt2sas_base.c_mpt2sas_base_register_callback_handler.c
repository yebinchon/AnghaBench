
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int * MPT_CALLBACK ;


 int MPT_MAX_CALLBACKS ;
 int ** mpt_callbacks ;

u8
mpt2sas_base_register_callback_handler(MPT_CALLBACK cb_func)
{
 u8 cb_idx;

 for (cb_idx = MPT_MAX_CALLBACKS-1; cb_idx; cb_idx--)
  if (mpt_callbacks[cb_idx] == ((void*)0))
   break;

 mpt_callbacks[cb_idx] = cb_func;
 return cb_idx;
}
