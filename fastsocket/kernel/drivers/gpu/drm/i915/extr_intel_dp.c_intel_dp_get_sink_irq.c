
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int dummy; } ;


 int DP_DEVICE_SERVICE_IRQ_VECTOR ;
 int intel_dp_aux_native_read_retry (struct intel_dp*,int ,int *,int) ;

__attribute__((used)) static bool
intel_dp_get_sink_irq(struct intel_dp *intel_dp, u8 *sink_irq_vector)
{
 int ret;

 ret = intel_dp_aux_native_read_retry(intel_dp,
          DP_DEVICE_SERVICE_IRQ_VECTOR,
          sink_irq_vector, 1);
 if (!ret)
  return 0;

 return 1;
}
