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
struct drm_dma {int granted_count; int request_count; int /*<<< orphan*/ * request_sizes; int /*<<< orphan*/ * request_indices; } ;
struct drm_device {int dummy; } ;
struct drm_buf {int /*<<< orphan*/  total; int /*<<< orphan*/  idx; struct drm_file* file_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int EAGAIN ; 
 int EFAULT ; 
 struct drm_buf* FUNC1 (struct drm_device*) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev,
				struct drm_file *file_priv,
				struct drm_dma *d)
{
	int i;
	struct drm_buf *buf;

	for (i = d->granted_count; i < d->request_count; i++) {
		buf = FUNC1(dev);
		if (!buf)
			return -EAGAIN;

		buf->file_priv = file_priv;

		if (FUNC0(&d->request_indices[i], &buf->idx,
				     sizeof(buf->idx)))
			return -EFAULT;
		if (FUNC0(&d->request_sizes[i], &buf->total,
				     sizeof(buf->total)))
			return -EFAULT;

		d->granted_count++;
	}
	return 0;
}