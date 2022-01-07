
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;


 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;

__attribute__((used)) static struct drm_device *intel_dp_to_dev(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);

 return intel_dig_port->base.base.dev;
}
