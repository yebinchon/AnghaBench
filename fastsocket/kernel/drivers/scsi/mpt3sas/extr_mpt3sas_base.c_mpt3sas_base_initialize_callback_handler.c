
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ MPT_MAX_CALLBACKS ;
 int mpt3sas_base_release_callback_handler (scalar_t__) ;

void
mpt3sas_base_initialize_callback_handler(void)
{
 u8 cb_idx;

 for (cb_idx = 0; cb_idx < MPT_MAX_CALLBACKS; cb_idx++)
  mpt3sas_base_release_callback_handler(cb_idx);
}
