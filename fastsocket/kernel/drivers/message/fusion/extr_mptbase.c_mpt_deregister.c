
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int MPTUNKNOWN_DRIVER ;
 size_t MPT_MAX_PROTOCOL_DRIVERS ;
 int ** MptCallbacks ;
 int * MptDriverClass ;
 int ** MptEvHandlers ;
 int last_drv_idx ;

void
mpt_deregister(u8 cb_idx)
{
 if (cb_idx && (cb_idx < MPT_MAX_PROTOCOL_DRIVERS)) {
  MptCallbacks[cb_idx] = ((void*)0);
  MptDriverClass[cb_idx] = MPTUNKNOWN_DRIVER;
  MptEvHandlers[cb_idx] = ((void*)0);

  last_drv_idx++;
 }
}
