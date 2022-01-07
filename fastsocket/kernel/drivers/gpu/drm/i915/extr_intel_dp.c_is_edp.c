
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct intel_digital_port {TYPE_1__ base; } ;


 scalar_t__ INTEL_OUTPUT_EDP ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;

__attribute__((used)) static bool is_edp(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);

 return intel_dig_port->base.type == INTEL_OUTPUT_EDP;
}
