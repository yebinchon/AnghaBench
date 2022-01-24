#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct drm_file {TYPE_2__ prime; } ;
struct drm_device {TYPE_1__* driver; } ;
typedef  struct drm_gem_object dma_buf ;
struct TYPE_4__ {struct drm_gem_object* (* gem_prime_import ) (struct drm_device*,struct drm_gem_object*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int FUNC7 (TYPE_2__*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC11 (struct drm_device*,struct drm_gem_object*) ; 

int FUNC12(struct drm_device *dev,
		struct drm_file *file_priv, int prime_fd, uint32_t *handle)
{
	struct dma_buf *dma_buf;
	struct drm_gem_object *obj;
	int ret;

	dma_buf = FUNC2(prime_fd);
	if (FUNC0(dma_buf))
		return FUNC1(dma_buf);

	FUNC9(&file_priv->prime.lock);

	ret = FUNC8(&file_priv->prime,
			dma_buf, handle);
	if (!ret) {
		ret = 0;
		goto out_put;
	}

	/* never seen this one, need to import */
	obj = dev->driver->gem_prime_import(dev, dma_buf);
	if (FUNC0(obj)) {
		ret = FUNC1(obj);
		goto out_put;
	}

	ret = FUNC4(file_priv, obj, handle);
	FUNC6(obj);
	if (ret)
		goto out_put;

	ret = FUNC7(&file_priv->prime,
			dma_buf, *handle);
	if (ret)
		goto fail;

	FUNC10(&file_priv->prime.lock);

	FUNC3(dma_buf);

	return 0;

fail:
	/* hmm, if driver attached, we are relying on the free-object path
	 * to detach.. which seems ok..
	 */
	FUNC5(obj);
out_put:
	FUNC3(dma_buf);
	FUNC10(&file_priv->prime.lock);
	return ret;
}