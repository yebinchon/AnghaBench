#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int num_crtcs; int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/ * vblank_inmodeset; int /*<<< orphan*/ * last_vblank_wait; int /*<<< orphan*/ * vblank_refcount; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *) m->private;
	struct drm_device *dev = node->minor->dev;
	int crtc;

	FUNC2(&dev->struct_mutex);
	for (crtc = 0; crtc < dev->num_crtcs; crtc++) {
		FUNC4(m, "CRTC %d enable:     %d\n",
			   crtc, FUNC0(&dev->vblank_refcount[crtc]));
		FUNC4(m, "CRTC %d counter:    %d\n",
			   crtc, FUNC1(dev, crtc));
		FUNC4(m, "CRTC %d last wait:  %d\n",
			   crtc, dev->last_vblank_wait[crtc]);
		FUNC4(m, "CRTC %d in modeset: %d\n",
			   crtc, dev->vblank_inmodeset[crtc]);
	}
	FUNC3(&dev->struct_mutex);
	return 0;
}