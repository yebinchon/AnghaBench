#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct agp_memory {scalar_t__ page_count; int type; int is_flushed; int /*<<< orphan*/  pages; int /*<<< orphan*/  num_sg; int /*<<< orphan*/  sg_list; } ;
typedef  scalar_t__ off_t ;
struct TYPE_4__ {int clear_fake_agp; int stolen_size; int gtt_mappable_entries; scalar_t__ gtt_total_entries; scalar_t__ needs_dmar; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* check_flags ) (int) ;} ;

/* Variables and functions */
 int AGP_DCACHE_MEMORY ; 
 int EINVAL ; 
 int INTEL_GTT_GEN ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct agp_memory*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,struct sg_table*) ; 
 TYPE_2__ intel_private ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct agp_memory *mem,
					 off_t pg_start, int type)
{
	int ret = -EINVAL;

	if (intel_private.clear_fake_agp) {
		int start = intel_private.stolen_size / PAGE_SIZE;
		int end = intel_private.gtt_mappable_entries;
		FUNC2(start, end - start);
		intel_private.clear_fake_agp = false;
	}

	if (INTEL_GTT_GEN == 1 && type == AGP_DCACHE_MEMORY)
		return FUNC1(mem, pg_start, type);

	if (mem->page_count == 0)
		goto out;

	if (pg_start + mem->page_count > intel_private.gtt_total_entries)
		goto out_err;

	if (type != mem->type)
		goto out_err;

	if (!intel_private.driver->check_flags(type))
		goto out_err;

	if (!mem->is_flushed)
		FUNC0();

	if (intel_private.needs_dmar) {
		struct sg_table st;

		ret = FUNC5(mem->pages, mem->page_count, &st);
		if (ret != 0)
			return ret;

		FUNC4(&st, pg_start, type);
		mem->sg_list = st.sgl;
		mem->num_sg = st.nents;
	} else
		FUNC3(pg_start, mem->page_count, mem->pages,
				       type);

out:
	ret = 0;
out_err:
	mem->is_flushed = true;
	return ret;
}