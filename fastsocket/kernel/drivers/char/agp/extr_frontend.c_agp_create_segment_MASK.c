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
struct agp_segment_priv {int /*<<< orphan*/  prot; int /*<<< orphan*/  pg_count; int /*<<< orphan*/  pg_start; } ;
struct agp_segment {int /*<<< orphan*/  prot; int /*<<< orphan*/  pg_count; int /*<<< orphan*/  pg_start; } ;
struct agp_region {int seg_count; struct agp_segment_priv* seg_list; } ;
struct agp_client {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct agp_client*,struct agp_segment_priv**,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_segment_priv*) ; 
 struct agp_segment_priv** FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct agp_segment_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct agp_client *client, struct agp_region *region)
{
	struct agp_segment_priv **ret_seg;
	struct agp_segment_priv *seg;
	struct agp_segment *user_seg;
	size_t i;

	seg = FUNC4((sizeof(struct agp_segment_priv) * region->seg_count), GFP_KERNEL);
	if (seg == NULL) {
		FUNC2(region->seg_list);
		region->seg_list = NULL;
		return -ENOMEM;
	}
	user_seg = region->seg_list;

	for (i = 0; i < region->seg_count; i++) {
		seg[i].pg_start = user_seg[i].pg_start;
		seg[i].pg_count = user_seg[i].pg_count;
		seg[i].prot = FUNC1(user_seg[i].prot);
	}
	FUNC2(region->seg_list);
	region->seg_list = NULL;

	ret_seg = FUNC3(sizeof(void *), GFP_KERNEL);
	if (ret_seg == NULL) {
		FUNC2(seg);
		return -ENOMEM;
	}
	*ret_seg = seg;
	FUNC0(client, ret_seg, region->seg_count);
	return 0;
}