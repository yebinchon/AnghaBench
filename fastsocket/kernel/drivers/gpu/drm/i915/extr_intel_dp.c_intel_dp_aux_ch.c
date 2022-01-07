
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct intel_dp {int output_reg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {int port; TYPE_2__ base; } ;
struct drm_i915_private {int pm_qos; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int gen; } ;


 int BUG () ;
 int DIV_ROUND_UP (int ,int) ;
 int DPA_AUX_CH_CTL ;
 int DPA_AUX_CH_DATA1 ;
 int DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT ;
 int DP_AUX_CH_CTL_DONE ;
 int DP_AUX_CH_CTL_INTERRUPT ;
 int DP_AUX_CH_CTL_MESSAGE_SIZE_MASK ;
 int DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT ;
 int DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT ;
 int DP_AUX_CH_CTL_RECEIVE_ERROR ;
 int DP_AUX_CH_CTL_SEND_BUSY ;
 int DP_AUX_CH_CTL_TIME_OUT_400us ;
 int DP_AUX_CH_CTL_TIME_OUT_ERROR ;
 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_ERROR (char*,int) ;
 int EBUSY ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ HAS_DDI (struct drm_device*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_READ_NOTRACE (int) ;
 int I915_WRITE (int,int) ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int PCH_DPB_AUX_CH_CTL ;
 int PCH_DPB_AUX_CH_DATA1 ;
 int PCH_DPC_AUX_CH_CTL ;
 int PCH_DPC_AUX_CH_DATA1 ;
 int PCH_DPD_AUX_CH_CTL ;
 int PCH_DPD_AUX_CH_DATA1 ;
 int PM_QOS_DEFAULT_VALUE ;




 int WARN (int,char*,int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_ddi_get_cdclk_freq (struct drm_i915_private*) ;
 int intel_dp_aux_wait_done (struct intel_dp*,int) ;
 int intel_dp_check_edp (struct intel_dp*) ;
 int intel_hrawclk (struct drm_device*) ;
 int intel_pch_rawclk (struct drm_device*) ;
 scalar_t__ is_cpu_edp (struct intel_dp*) ;
 int msleep (int) ;
 int pack_aux (int *,int) ;
 int pm_qos_update_request (int *,int ) ;
 int unpack_aux (int ,int *,int) ;

__attribute__((used)) static int
intel_dp_aux_ch(struct intel_dp *intel_dp,
  uint8_t *send, int send_bytes,
  uint8_t *recv, int recv_size)
{
 uint32_t output_reg = intel_dp->output_reg;
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_device *dev = intel_dig_port->base.base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t ch_ctl = output_reg + 0x10;
 uint32_t ch_data = ch_ctl + 4;
 int i, ret, recv_bytes;
 uint32_t status;
 uint32_t aux_clock_divider;
 int try, precharge;
 bool has_aux_irq = INTEL_INFO(dev)->gen >= 5 && !IS_VALLEYVIEW(dev);





 pm_qos_update_request(&dev_priv->pm_qos, 0);

 if (IS_HASWELL(dev)) {
  switch (intel_dig_port->port) {
  case 131:
   ch_ctl = DPA_AUX_CH_CTL;
   ch_data = DPA_AUX_CH_DATA1;
   break;
  case 130:
   ch_ctl = PCH_DPB_AUX_CH_CTL;
   ch_data = PCH_DPB_AUX_CH_DATA1;
   break;
  case 129:
   ch_ctl = PCH_DPC_AUX_CH_CTL;
   ch_data = PCH_DPC_AUX_CH_DATA1;
   break;
  case 128:
   ch_ctl = PCH_DPD_AUX_CH_CTL;
   ch_data = PCH_DPD_AUX_CH_DATA1;
   break;
  default:
   BUG();
  }
 }

 intel_dp_check_edp(intel_dp);







 if (is_cpu_edp(intel_dp)) {
  if (HAS_DDI(dev))
   aux_clock_divider = intel_ddi_get_cdclk_freq(dev_priv) >> 1;
  else if (IS_VALLEYVIEW(dev))
   aux_clock_divider = 100;
  else if (IS_GEN6(dev) || IS_GEN7(dev))
   aux_clock_divider = 200;
  else
   aux_clock_divider = 225;
 } else if (HAS_PCH_SPLIT(dev))
  aux_clock_divider = DIV_ROUND_UP(intel_pch_rawclk(dev), 2);
 else
  aux_clock_divider = intel_hrawclk(dev) / 2;

 if (IS_GEN6(dev))
  precharge = 3;
 else
  precharge = 5;


 for (try = 0; try < 3; try++) {
  status = I915_READ_NOTRACE(ch_ctl);
  if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
   break;
  msleep(1);
 }

 if (try == 3) {
  WARN(1, "dp_aux_ch not started status 0x%08x\n",
       I915_READ(ch_ctl));
  ret = -EBUSY;
  goto out;
 }


 for (try = 0; try < 5; try++) {

  for (i = 0; i < send_bytes; i += 4)
   I915_WRITE(ch_data + i,
       pack_aux(send + i, send_bytes - i));


  I915_WRITE(ch_ctl,
      DP_AUX_CH_CTL_SEND_BUSY |
      (has_aux_irq ? DP_AUX_CH_CTL_INTERRUPT : 0) |
      DP_AUX_CH_CTL_TIME_OUT_400us |
      (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
      (precharge << DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT) |
      (aux_clock_divider << DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT) |
      DP_AUX_CH_CTL_DONE |
      DP_AUX_CH_CTL_TIME_OUT_ERROR |
      DP_AUX_CH_CTL_RECEIVE_ERROR);

  status = intel_dp_aux_wait_done(intel_dp, has_aux_irq);


  I915_WRITE(ch_ctl,
      status |
      DP_AUX_CH_CTL_DONE |
      DP_AUX_CH_CTL_TIME_OUT_ERROR |
      DP_AUX_CH_CTL_RECEIVE_ERROR);

  if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
         DP_AUX_CH_CTL_RECEIVE_ERROR))
   continue;
  if (status & DP_AUX_CH_CTL_DONE)
   break;
 }

 if ((status & DP_AUX_CH_CTL_DONE) == 0) {
  DRM_ERROR("dp_aux_ch not done status 0x%08x\n", status);
  ret = -EBUSY;
  goto out;
 }




 if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
  DRM_ERROR("dp_aux_ch receive error status 0x%08x\n", status);
  ret = -EIO;
  goto out;
 }



 if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
  DRM_DEBUG_KMS("dp_aux_ch timeout status 0x%08x\n", status);
  ret = -ETIMEDOUT;
  goto out;
 }


 recv_bytes = ((status & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >>
        DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT);
 if (recv_bytes > recv_size)
  recv_bytes = recv_size;

 for (i = 0; i < recv_bytes; i += 4)
  unpack_aux(I915_READ(ch_data + i),
      recv + i, recv_bytes - i);

 ret = recv_bytes;
out:
 pm_qos_update_request(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);

 return ret;
}
