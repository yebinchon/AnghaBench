
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int base; } ;


 struct intel_hdmi* enc_to_intel_hdmi (int *) ;
 TYPE_1__* intel_attached_encoder (struct drm_connector*) ;

__attribute__((used)) static struct intel_hdmi *intel_attached_hdmi(struct drm_connector *connector)
{
 return enc_to_intel_hdmi(&intel_attached_encoder(connector)->base);
}
