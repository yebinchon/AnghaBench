
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ant_coupling; } ;


 scalar_t__ IWL_BT_ANTENNA_COUPLING_THRESHOLD ;
 TYPE_1__ iwlwifi_mod_params ;

__attribute__((used)) static inline bool is_loose_coex(void)
{
 return iwlwifi_mod_params.ant_coupling >
  IWL_BT_ANTENNA_COUPLING_THRESHOLD;
}
