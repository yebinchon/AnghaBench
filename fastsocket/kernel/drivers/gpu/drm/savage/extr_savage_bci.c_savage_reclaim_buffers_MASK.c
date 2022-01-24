#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct drm_file {TYPE_1__* master; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {TYPE_2__* dev_private; struct drm_device_dma* dma; } ;
struct drm_buf {struct drm_file* file_priv; TYPE_3__* dev_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  event_wrap; } ;
typedef  TYPE_2__ drm_savage_private_t ;
struct TYPE_9__ {int /*<<< orphan*/  age; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ drm_savage_buf_priv_t ;
struct TYPE_10__ {scalar_t__ hw_lock; } ;
struct TYPE_7__ {TYPE_5__ lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SAVAGE_WAIT_3D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_buf*) ; 

void FUNC6(struct drm_device *dev, struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	drm_savage_private_t *dev_priv = dev->dev_private;
	int release_idlelock = 0;
	int i;

	if (!dma)
		return;
	if (!dev_priv)
		return;
	if (!dma->buflist)
		return;

	if (file_priv->master && file_priv->master->lock.hw_lock) {
		FUNC3(&file_priv->master->lock);
		release_idlelock = 1;
	}

	for (i = 0; i < dma->buf_count; i++) {
		struct drm_buf *buf = dma->buflist[i];
		drm_savage_buf_priv_t *buf_priv = buf->dev_private;

		if (buf->file_priv == file_priv && buf_priv &&
		    buf_priv->next == NULL && buf_priv->prev == NULL) {
			uint16_t event;
			FUNC0("reclaimed from client\n");
			event = FUNC4(dev_priv, SAVAGE_WAIT_3D);
			FUNC1(&buf_priv->age, event, dev_priv->event_wrap);
			FUNC5(dev, buf);
		}
	}

	if (release_idlelock)
		FUNC2(&file_priv->master->lock);
}