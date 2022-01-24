#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sequence; int /*<<< orphan*/  tval_usec; int /*<<< orphan*/  tval_sec; } ;
struct TYPE_3__ {int type; unsigned int sequence; } ;
union drm_wait_vblank {TYPE_2__ reply; TYPE_1__ request; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct drm_file {int dummy; } ;
struct drm_device {unsigned int num_crtcs; unsigned int* last_vblank_wait; int /*<<< orphan*/  irq_enabled; int /*<<< orphan*/ * vbl_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int DRM_HZ ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 int EINTR ; 
 int EINVAL ; 
#define  _DRM_VBLANK_ABSOLUTE 129 
 unsigned int _DRM_VBLANK_EVENT ; 
 int _DRM_VBLANK_FLAGS_MASK ; 
 int _DRM_VBLANK_HIGH_CRTC_MASK ; 
 unsigned int _DRM_VBLANK_HIGH_CRTC_SHIFT ; 
 unsigned int _DRM_VBLANK_NEXTONMISS ; 
#define  _DRM_VBLANK_RELATIVE 128 
 unsigned int _DRM_VBLANK_SECONDARY ; 
 int _DRM_VBLANK_SIGNAL ; 
 int _DRM_VBLANK_TYPES_MASK ; 
 scalar_t__ FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,unsigned int,union drm_wait_vblank*,struct drm_file*) ; 
 int FUNC6 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,unsigned int,struct timeval*) ; 
 int FUNC8 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,unsigned int) ; 

int FUNC10(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	union drm_wait_vblank *vblwait = data;
	int ret;
	unsigned int flags, seq, crtc, high_crtc;

	if (FUNC3(dev, DRIVER_HAVE_IRQ))
		if ((!FUNC4(dev)) || (!dev->irq_enabled))
			return -EINVAL;

	if (vblwait->request.type & _DRM_VBLANK_SIGNAL)
		return -EINVAL;

	if (vblwait->request.type &
	    ~(_DRM_VBLANK_TYPES_MASK | _DRM_VBLANK_FLAGS_MASK |
	      _DRM_VBLANK_HIGH_CRTC_MASK)) {
		FUNC1("Unsupported type value 0x%x, supported mask 0x%x\n",
			  vblwait->request.type,
			  (_DRM_VBLANK_TYPES_MASK | _DRM_VBLANK_FLAGS_MASK |
			   _DRM_VBLANK_HIGH_CRTC_MASK));
		return -EINVAL;
	}

	flags = vblwait->request.type & _DRM_VBLANK_FLAGS_MASK;
	high_crtc = (vblwait->request.type & _DRM_VBLANK_HIGH_CRTC_MASK);
	if (high_crtc)
		crtc = high_crtc >> _DRM_VBLANK_HIGH_CRTC_SHIFT;
	else
		crtc = flags & _DRM_VBLANK_SECONDARY ? 1 : 0;
	if (crtc >= dev->num_crtcs)
		return -EINVAL;

	ret = FUNC8(dev, crtc);
	if (ret) {
		FUNC0("failed to acquire vblank counter, %d\n", ret);
		return ret;
	}
	seq = FUNC6(dev, crtc);

	switch (vblwait->request.type & _DRM_VBLANK_TYPES_MASK) {
	case _DRM_VBLANK_RELATIVE:
		vblwait->request.sequence += seq;
		vblwait->request.type &= ~_DRM_VBLANK_RELATIVE;
	case _DRM_VBLANK_ABSOLUTE:
		break;
	default:
		ret = -EINVAL;
		goto done;
	}

	if (flags & _DRM_VBLANK_EVENT) {
		/* must hold on to the vblank ref until the event fires
		 * drm_vblank_put will be called asynchronously
		 */
		return FUNC5(dev, crtc, vblwait, file_priv);
	}

	if ((flags & _DRM_VBLANK_NEXTONMISS) &&
	    (seq - vblwait->request.sequence) <= (1<<23)) {
		vblwait->request.sequence = seq + 1;
	}

	FUNC0("waiting on vblank count %d, crtc %d\n",
		  vblwait->request.sequence, crtc);
	dev->last_vblank_wait[crtc] = vblwait->request.sequence;
	FUNC2(ret, dev->vbl_queue[crtc], 3 * DRM_HZ,
		    (((FUNC6(dev, crtc) -
		       vblwait->request.sequence) <= (1 << 23)) ||
		     !dev->irq_enabled));

	if (ret != -EINTR) {
		struct timeval now;

		vblwait->reply.sequence = FUNC7(dev, crtc, &now);
		vblwait->reply.tval_sec = now.tv_sec;
		vblwait->reply.tval_usec = now.tv_usec;

		FUNC0("returning %d to client\n",
			  vblwait->reply.sequence);
	} else {
		FUNC0("vblank wait interrupted by signal\n");
	}

done:
	FUNC9(dev, crtc);
	return ret;
}