#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int /*<<< orphan*/  nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {TYPE_4__* dev; } ;
struct drm_i915_gem_object {TYPE_3__ base; TYPE_2__* pages; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; TYPE_1__* dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_6__ {int nents; struct scatterlist* sgl; } ;
struct TYPE_5__ {struct drm_i915_gem_object* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 
 struct sg_table* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_table*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sg_table *FUNC13(struct dma_buf_attachment *attachment,
					     enum dma_data_direction dir)
{
	struct drm_i915_gem_object *obj = attachment->dmabuf->priv;
	struct sg_table *st;
	struct scatterlist *src, *dst;
	int ret, i;

	ret = FUNC4(obj->base.dev);
	if (ret)
		return FUNC0(ret);

	ret = FUNC2(obj);
	if (ret) {
		st = FUNC0(ret);
		goto out;
	}

	/* Copy sg so that we make an independent mapping */
	st = FUNC6(sizeof(struct sg_table), GFP_KERNEL);
	if (st == NULL) {
		st = FUNC0(-ENOMEM);
		goto out;
	}

	ret = FUNC8(st, obj->pages->nents, GFP_KERNEL);
	if (ret) {
		FUNC5(st);
		st = FUNC0(ret);
		goto out;
	}

	src = obj->pages->sgl;
	dst = st->sgl;
	for (i = 0; i < obj->pages->nents; i++) {
		FUNC12(dst, FUNC11(src), PAGE_SIZE, 0);
		dst = FUNC10(dst);
		src = FUNC10(src);
	}

	if (!FUNC1(attachment->dev, st->sgl, st->nents, dir)) {
		FUNC9(st);
		FUNC5(st);
		st = FUNC0(-ENOMEM);
		goto out;
	}

	FUNC3(obj);

out:
	FUNC7(&obj->base.dev->struct_mutex);
	return st;
}