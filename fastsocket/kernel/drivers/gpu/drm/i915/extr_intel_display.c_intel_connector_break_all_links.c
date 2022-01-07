
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * encoder; int dpms; } ;
struct intel_connector {TYPE_3__* encoder; TYPE_1__ base; } ;
struct TYPE_5__ {int * crtc; } ;
struct TYPE_6__ {int connectors_active; TYPE_2__ base; } ;


 int DRM_MODE_DPMS_OFF ;

__attribute__((used)) static void
intel_connector_break_all_links(struct intel_connector *connector)
{
 connector->base.dpms = DRM_MODE_DPMS_OFF;
 connector->base.encoder = ((void*)0);
 connector->encoder->connectors_active = 0;
 connector->encoder->base.crtc = ((void*)0);
}
