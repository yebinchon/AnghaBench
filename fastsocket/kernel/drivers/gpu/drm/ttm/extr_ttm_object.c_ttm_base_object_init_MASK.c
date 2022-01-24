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
struct ttm_object_file {struct ttm_object_device* tdev; } ;
struct ttm_object_device {int /*<<< orphan*/  object_hash; int /*<<< orphan*/  object_lock; } ;
struct ttm_base_object {int shareable; void (* refcount_release ) (struct ttm_base_object**) ;void (* ref_obj_release ) (struct ttm_base_object*,int) ;int object_type; int /*<<< orphan*/  hash; int /*<<< orphan*/  refcount; int /*<<< orphan*/  tfile; } ;
typedef  enum ttm_object_type { ____Placeholder_ttm_object_type } ttm_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_REF_USAGE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_base_object**) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_object_file*) ; 
 int FUNC5 (struct ttm_object_file*,struct ttm_base_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ttm_object_file *tfile,
			 struct ttm_base_object *base,
			 bool shareable,
			 enum ttm_object_type object_type,
			 void (*refcount_release) (struct ttm_base_object **),
			 void (*ref_obj_release) (struct ttm_base_object *,
						  enum ttm_ref_type ref_type))
{
	struct ttm_object_device *tdev = tfile->tdev;
	int ret;

	base->shareable = shareable;
	base->tfile = FUNC4(tfile);
	base->refcount_release = refcount_release;
	base->ref_obj_release = ref_obj_release;
	base->object_type = object_type;
	FUNC7(&tdev->object_lock);
	FUNC2(&base->refcount);
	ret = FUNC0(&tdev->object_hash,
					&base->hash,
					(unsigned long)base, 31, 0, 0);
	FUNC8(&tdev->object_lock);
	if (FUNC6(ret != 0))
		goto out_err0;

	ret = FUNC5(tfile, base, TTM_REF_USAGE, NULL);
	if (FUNC6(ret != 0))
		goto out_err1;

	FUNC3(&base);

	return 0;
out_err1:
	(void)FUNC1(&tdev->object_hash, &base->hash);
out_err0:
	return ret;
}