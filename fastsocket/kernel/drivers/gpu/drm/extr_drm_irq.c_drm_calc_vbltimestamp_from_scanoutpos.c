
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct drm_display_mode {int crtc_vtotal; int crtc_vdisplay; } ;
struct drm_device {int num_crtcs; TYPE_1__* driver; } ;
struct drm_crtc {scalar_t__ framedur_ns; scalar_t__ linedur_ns; scalar_t__ pixeldur_ns; struct drm_display_mode hwmode; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int (* get_scanout_position ) (struct drm_device*,int,int*,int*) ;} ;


 unsigned int DRM_CALLED_FROM_VBLIRQ ;
 int DRM_DEBUG (char*,int,...) ;
 int DRM_ERROR (char*,...) ;
 int DRM_SCANOUTPOS_INVBL ;
 int DRM_SCANOUTPOS_VALID ;
 int DRM_TIMESTAMP_MAXRETRIES ;
 int DRM_VBLANKTIME_INVBL ;
 int DRM_VBLANKTIME_SCANOUTPOS_METHOD ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int do_gettimeofday (struct timeval*) ;
 struct timeval ns_to_timeval (scalar_t__) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int stub1 (struct drm_device*,int,int*,int*) ;
 scalar_t__ timeval_to_ns (struct timeval*) ;

int drm_calc_vbltimestamp_from_scanoutpos(struct drm_device *dev, int crtc,
       int *max_error,
       struct timeval *vblank_time,
       unsigned flags,
       struct drm_crtc *refcrtc)
{
 struct timeval stime, raw_time;
 struct drm_display_mode *mode;
 int vbl_status, vtotal, vdisplay;
 int vpos, hpos, i;
 s64 framedur_ns, linedur_ns, pixeldur_ns, delta_ns, duration_ns;
 bool invbl;

 if (crtc < 0 || crtc >= dev->num_crtcs) {
  DRM_ERROR("Invalid crtc %d\n", crtc);
  return -EINVAL;
 }


 if (!dev->driver->get_scanout_position) {
  DRM_ERROR("Called from driver w/o get_scanout_position()!?\n");
  return -EIO;
 }

 mode = &refcrtc->hwmode;
 vtotal = mode->crtc_vtotal;
 vdisplay = mode->crtc_vdisplay;


 framedur_ns = refcrtc->framedur_ns;
 linedur_ns = refcrtc->linedur_ns;
 pixeldur_ns = refcrtc->pixeldur_ns;




 if (vtotal <= 0 || vdisplay <= 0 || framedur_ns == 0) {
  DRM_DEBUG("crtc %d: Noop due to uninitialized mode.\n", crtc);
  return -EAGAIN;
 }
 for (i = 0; i < DRM_TIMESTAMP_MAXRETRIES; i++) {



  preempt_disable();


  do_gettimeofday(&stime);


  vbl_status = dev->driver->get_scanout_position(dev, crtc, &vpos, &hpos);


  do_gettimeofday(&raw_time);

  preempt_enable();


  if (!(vbl_status & DRM_SCANOUTPOS_VALID)) {
   DRM_DEBUG("crtc %d : scanoutpos query failed [%d].\n",
      crtc, vbl_status);
   return -EIO;
  }

  duration_ns = timeval_to_ns(&raw_time) - timeval_to_ns(&stime);


  if (duration_ns <= (s64) *max_error)
   break;
 }


 if (i == DRM_TIMESTAMP_MAXRETRIES) {
  DRM_DEBUG("crtc %d: Noisy timestamp %d us > %d us [%d reps].\n",
     crtc, (int) duration_ns/1000, *max_error/1000, i);
 }


 *max_error = (int) duration_ns;






 invbl = vbl_status & DRM_SCANOUTPOS_INVBL;





 delta_ns = (s64) vpos * linedur_ns + (s64) hpos * pixeldur_ns;
 if ((flags & DRM_CALLED_FROM_VBLIRQ) && !invbl &&
     ((vdisplay - vpos) < vtotal / 100)) {
  delta_ns = delta_ns - framedur_ns;


  vbl_status |= 0x8;
 }




 *vblank_time = ns_to_timeval(timeval_to_ns(&raw_time) - delta_ns);

 DRM_DEBUG("crtc %d : v %d p(%d,%d)@ %ld.%ld -> %ld.%ld [e %d us, %d rep]\n",
    crtc, (int)vbl_status, hpos, vpos,
    (long)raw_time.tv_sec, (long)raw_time.tv_usec,
    (long)vblank_time->tv_sec, (long)vblank_time->tv_usec,
    (int)duration_ns/1000, i);

 vbl_status = DRM_VBLANKTIME_SCANOUTPOS_METHOD;
 if (invbl)
  vbl_status |= DRM_VBLANKTIME_INVBL;

 return vbl_status;
}
