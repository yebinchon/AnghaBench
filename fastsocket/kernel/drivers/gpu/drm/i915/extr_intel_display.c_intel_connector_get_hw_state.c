
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int (* get_hw_state ) (struct intel_encoder*,int*) ;} ;
struct intel_connector {struct intel_encoder* encoder; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int stub1 (struct intel_encoder*,int*) ;

bool intel_connector_get_hw_state(struct intel_connector *connector)
{
 enum pipe pipe = 0;
 struct intel_encoder *encoder = connector->encoder;

 return encoder->get_hw_state(encoder, &pipe);
}
