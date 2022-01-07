
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc {int pipe; int cursor_x; int cursor_y; int cursor_addr; scalar_t__ cursor_width; scalar_t__ cursor_height; int cursor_visible; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {TYPE_1__* fb; scalar_t__ enabled; struct drm_device* dev; } ;
struct TYPE_2__ {scalar_t__ height; scalar_t__ width; } ;


 int CURPOS (int) ;
 int CURPOS_IVB (int) ;
 int CURSOR_POS_SIGN ;
 int CURSOR_X_SHIFT ;
 int CURSOR_Y_SHIFT ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_845G (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 scalar_t__ IS_I865G (struct drm_device*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_device*) ;
 int i845_update_cursor (struct drm_crtc*,int) ;
 int i9xx_update_cursor (struct drm_crtc*,int) ;
 int ivb_update_cursor (struct drm_crtc*,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_crtc_update_cursor(struct drm_crtc *crtc,
         bool on)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 int x = intel_crtc->cursor_x;
 int y = intel_crtc->cursor_y;
 u32 base, pos;
 bool visible;

 pos = 0;

 if (on && crtc->enabled && crtc->fb) {
  base = intel_crtc->cursor_addr;
  if (x > (int) crtc->fb->width)
   base = 0;

  if (y > (int) crtc->fb->height)
   base = 0;
 } else
  base = 0;

 if (x < 0) {
  if (x + intel_crtc->cursor_width < 0)
   base = 0;

  pos |= CURSOR_POS_SIGN << CURSOR_X_SHIFT;
  x = -x;
 }
 pos |= x << CURSOR_X_SHIFT;

 if (y < 0) {
  if (y + intel_crtc->cursor_height < 0)
   base = 0;

  pos |= CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
  y = -y;
 }
 pos |= y << CURSOR_Y_SHIFT;

 visible = base != 0;
 if (!visible && !intel_crtc->cursor_visible)
  return;

 if (IS_IVYBRIDGE(dev) || IS_HASWELL(dev)) {
  I915_WRITE(CURPOS_IVB(pipe), pos);
  ivb_update_cursor(crtc, base);
 } else {
  I915_WRITE(CURPOS(pipe), pos);
  if (IS_845G(dev) || IS_I865G(dev))
   i845_update_cursor(crtc, base);
  else
   i9xx_update_cursor(crtc, base);
 }
}
