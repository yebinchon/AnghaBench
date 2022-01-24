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
struct dm_pool_metadata {int /*<<< orphan*/  data_space_map_root; int /*<<< orphan*/  data_sm; int /*<<< orphan*/  metadata_space_map_root; int /*<<< orphan*/  metadata_sm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC2(struct dm_pool_metadata *pmd)
{
	int r;
	size_t len;

	r = FUNC1(pmd->metadata_sm, &len);
	if (r < 0)
		return r;

	r = FUNC0(pmd->metadata_sm, &pmd->metadata_space_map_root, len);
	if (r < 0)
		return r;

	r = FUNC1(pmd->data_sm, &len);
	if (r < 0)
		return r;

	return FUNC0(pmd->data_sm, &pmd->data_space_map_root, len);
}