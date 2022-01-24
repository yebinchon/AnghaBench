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
struct ttm_object_file {int /*<<< orphan*/ * ref_hash; int /*<<< orphan*/  ref_list; int /*<<< orphan*/  refcount; struct ttm_object_device* tdev; int /*<<< orphan*/  lock; } ;
struct ttm_object_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int TTM_REF_NUM ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_object_file*) ; 
 struct ttm_object_file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

struct ttm_object_file *FUNC8(struct ttm_object_device *tdev,
					     unsigned int hash_order)
{
	struct ttm_object_file *tfile = FUNC4(sizeof(*tfile), GFP_KERNEL);
	unsigned int i;
	unsigned int j = 0;
	int ret;

	if (FUNC7(tfile == NULL))
		return NULL;

	FUNC6(&tfile->lock);
	tfile->tdev = tdev;
	FUNC5(&tfile->refcount);
	FUNC0(&tfile->ref_list);

	for (i = 0; i < TTM_REF_NUM; ++i) {
		ret = FUNC1(&tfile->ref_hash[i], hash_order);
		if (ret) {
			j = i;
			goto out_err;
		}
	}

	return tfile;
out_err:
	for (i = 0; i < j; ++i)
		FUNC2(&tfile->ref_hash[i]);

	FUNC3(tfile);

	return NULL;
}