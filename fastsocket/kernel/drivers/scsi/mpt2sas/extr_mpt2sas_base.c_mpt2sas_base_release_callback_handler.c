
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int ** mpt_callbacks ;

void
mpt2sas_base_release_callback_handler(u8 cb_idx)
{
 mpt_callbacks[cb_idx] = ((void*)0);
}
