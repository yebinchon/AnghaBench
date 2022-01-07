
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_threshold; } ;
struct iwl_priv {TYPE_1__ hw_params; } ;
typedef int const s32 ;


 scalar_t__ CELSIUS_TO_KELVIN (int ) ;
 int CT_KILL_THRESHOLD_LEGACY ;
 int IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF ;
 int const iwl_temp_calib_to_offset (struct iwl_priv*) ;

__attribute__((used)) static void iwl5150_set_ct_threshold(struct iwl_priv *priv)
{
 const s32 volt2temp_coef = IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF;
 s32 threshold = (s32)CELSIUS_TO_KELVIN(CT_KILL_THRESHOLD_LEGACY) -
   iwl_temp_calib_to_offset(priv);

 priv->hw_params.ct_kill_threshold = threshold * volt2temp_coef;
}
