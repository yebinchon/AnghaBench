#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {void* export_dma_buf; TYPE_1__* import_attach; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct drm_file {TYPE_3__ prime; } ;
struct drm_device {TYPE_2__* driver; } ;
typedef  void dma_buf ;
struct TYPE_5__ {void* (* gem_prime_export ) (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {void* dmabuf; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC3 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int FUNC5 (TYPE_3__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 

int FUNC10(struct drm_device *dev,
		struct drm_file *file_priv, uint32_t handle, uint32_t flags,
		int *prime_fd)
{
	struct drm_gem_object *obj;
	void *buf;
	int ret = 0;
	struct dma_buf *dmabuf;

	obj = FUNC3(dev, file_priv, handle);
	if (!obj)
		return -ENOENT;

	FUNC7(&file_priv->prime.lock);
	/* re-export the original imported object */
	if (obj->import_attach) {
		dmabuf = obj->import_attach->dmabuf;
		goto out_have_obj;
	}

	if (obj->export_dma_buf) {
		dmabuf = obj->export_dma_buf;
		goto out_have_obj;
	}

	buf = dev->driver->gem_prime_export(dev, obj, flags);
	if (FUNC0(buf)) {
		/* normally the created dma-buf takes ownership of the ref,
		 * but if that fails then drop the ref
		 */
		ret = FUNC1(buf);
		goto out;
	}
	obj->export_dma_buf = buf;

	/* if we've exported this buffer the cheat and add it to the import list
	 * so we get the correct handle back
	 */
	ret = FUNC5(&file_priv->prime,
				       obj->export_dma_buf, handle);
	if (ret)
		goto out;

	*prime_fd = FUNC2(buf, flags);
	FUNC8(&file_priv->prime.lock);
	return 0;

out_have_obj:
	FUNC6(dmabuf);
	*prime_fd = FUNC2(dmabuf, flags);
out:
	FUNC4(obj);
	FUNC8(&file_priv->prime.lock);
	return ret;
}