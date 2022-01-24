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
struct cmb_data {int size; struct cmb_data* last_block; } ;
struct cmb {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int num_channels; int /*<<< orphan*/  lock; struct cmb* mem; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ccw_device*,struct cmb_data*) ; 
 TYPE_1__ cmb_area ; 
 int /*<<< orphan*/  FUNC3 (struct cmb*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cmb_data*) ; 
 void* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cmb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ccw_device *cdev)
{
	int ret;
	struct cmb *mem;
	ssize_t size;
	struct cmb_data *cmb_data;

	/* Allocate private cmb_data. */
	cmb_data = FUNC7(sizeof(struct cmb_data), GFP_KERNEL);
	if (!cmb_data)
		return -ENOMEM;

	cmb_data->last_block = FUNC7(sizeof(struct cmb), GFP_KERNEL);
	if (!cmb_data->last_block) {
		FUNC6(cmb_data);
		return -ENOMEM;
	}
	cmb_data->size = sizeof(struct cmb);
	FUNC10(&cmb_area.lock);

	if (!cmb_area.mem) {
		/* there is no user yet, so we need a new area */
		size = sizeof(struct cmb) * cmb_area.num_channels;
		FUNC0(!FUNC8(&cmb_area.list));

		FUNC11(&cmb_area.lock);
		mem = (void*)FUNC1(GFP_KERNEL | GFP_DMA,
				 FUNC5(size));
		FUNC10(&cmb_area.lock);

		if (cmb_area.mem) {
			/* ok, another thread was faster */
			FUNC4((unsigned long)mem, FUNC5(size));
		} else if (!mem) {
			/* no luck */
			ret = -ENOMEM;
			goto out;
		} else {
			/* everything ok */
			FUNC9(mem, 0, size);
			cmb_area.mem = mem;
			FUNC3(cmb_area.mem, 1);
		}
	}

	/* do the actual allocation */
	ret = FUNC2(cdev, cmb_data);
out:
	FUNC11(&cmb_area.lock);
	if (ret) {
		FUNC6(cmb_data->last_block);
		FUNC6(cmb_data);
	}
	return ret;
}