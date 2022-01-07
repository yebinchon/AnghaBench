
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDN_MAX_CHANNELS ;
 int * ippp_table ;
 int isdn_ppp_bundle_arr ;
 int kfree (int ) ;

void
isdn_ppp_cleanup(void)
{
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++)
  kfree(ippp_table[i]);





}
