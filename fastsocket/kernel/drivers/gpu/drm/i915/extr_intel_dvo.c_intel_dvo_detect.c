
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev_ops; } ;
struct intel_dvo {TYPE_2__ dev; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_3__ {int (* detect ) (TYPE_2__*) ;} ;


 struct intel_dvo* intel_attached_dvo (struct drm_connector*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static enum drm_connector_status
intel_dvo_detect(struct drm_connector *connector, bool force)
{
 struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
}
