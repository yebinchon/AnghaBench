
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int) ;
 int TRANSCONF (int) ;
 int TRANS_ENABLE ;
 int WARN (int,char*,int ) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_transcoder_disabled(struct drm_i915_private *dev_priv,
           enum pipe pipe)
{
 int reg;
 u32 val;
 bool enabled;

 reg = TRANSCONF(pipe);
 val = I915_READ(reg);
 enabled = !!(val & TRANS_ENABLE);
 WARN(enabled,
      "transcoder assertion failed, should be off on pipe %c but is still active\n",
      pipe_name(pipe));
}
