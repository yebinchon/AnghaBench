
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_encoder base; } ;


 TYPE_1__* intel_attached_encoder (struct drm_connector*) ;

struct drm_encoder *intel_best_encoder(struct drm_connector *connector)
{
 return &intel_attached_encoder(connector)->base;
}
