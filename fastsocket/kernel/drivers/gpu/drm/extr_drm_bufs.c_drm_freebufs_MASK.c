#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf_free {int count; int /*<<< orphan*/ * list; } ;
struct drm_buf {struct drm_file* file_priv; } ;
typedef  int /*<<< orphan*/  idx ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_DMA ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_device *dev, void *data,
		 struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf_free *request = data;
	int i;
	int idx;
	struct drm_buf *buf;

	if (!FUNC3(dev, DRIVER_HAVE_DMA))
		return -EINVAL;

	if (!dma)
		return -EINVAL;

	FUNC0("%d\n", request->count);
	for (i = 0; i < request->count; i++) {
		if (FUNC2(&idx, &request->list[i], sizeof(idx)))
			return -EFAULT;
		if (idx < 0 || idx >= dma->buf_count) {
			FUNC1("Index %d (of %d max)\n",
				  idx, dma->buf_count - 1);
			return -EINVAL;
		}
		buf = dma->buflist[idx];
		if (buf->file_priv != file_priv) {
			FUNC1("Process %d freeing buffer not owned\n",
				  FUNC5(current));
			return -EINVAL;
		}
		FUNC4(dev, buf);
	}

	return 0;
}