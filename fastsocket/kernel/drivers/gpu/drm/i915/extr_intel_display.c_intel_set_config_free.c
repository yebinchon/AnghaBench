
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_set_config {struct intel_set_config* save_encoder_crtcs; struct intel_set_config* save_connector_encoders; } ;


 int kfree (struct intel_set_config*) ;

__attribute__((used)) static void intel_set_config_free(struct intel_set_config *config)
{
 if (!config)
  return;

 kfree(config->save_connector_encoders);
 kfree(config->save_encoder_crtcs);
 kfree(config);
}
