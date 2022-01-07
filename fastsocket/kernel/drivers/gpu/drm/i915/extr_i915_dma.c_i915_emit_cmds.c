
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int * dev_private; } ;
typedef int drm_i915_private_t ;
struct TYPE_2__ {int size; } ;


 int ADVANCE_LP_RING () ;
 int BEGIN_LP_RING (int) ;
 int EINVAL ;
 TYPE_1__* LP_RING (int *) ;
 int OUT_RING (int) ;
 int validate_cmd (int) ;

__attribute__((used)) static int i915_emit_cmds(struct drm_device * dev, int *buffer, int dwords)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int i, ret;

 if ((dwords+1) * sizeof(int) >= LP_RING(dev_priv)->size - 8)
  return -EINVAL;

 for (i = 0; i < dwords;) {
  int sz = validate_cmd(buffer[i]);
  if (sz == 0 || i + sz > dwords)
   return -EINVAL;
  i += sz;
 }

 ret = BEGIN_LP_RING((dwords+1)&~1);
 if (ret)
  return ret;

 for (i = 0; i < dwords; i++)
  OUT_RING(buffer[i]);
 if (dwords & 1)
  OUT_RING(0);

 ADVANCE_LP_RING();

 return 0;
}
