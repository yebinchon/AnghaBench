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
struct smu_sdbp_header {int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct smu_sdbp_header const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct smu_sdbp_header* FUNC5 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 TYPE_1__* smu ; 
 struct smu_sdbp_header* FUNC6 (int) ; 
 int /*<<< orphan*/  smu_part_access ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

const struct smu_sdbp_header *FUNC8(int id,
		unsigned int *size, int interruptible)
{
	char pname[32];
	const struct smu_sdbp_header *part;

	if (!smu)
		return NULL;

	FUNC7(pname, "sdb-partition-%02x", id);

	FUNC0("smu_get_sdb_partition(%02x)\n", id);

	if (interruptible) {
		int rc;
		rc = FUNC3(&smu_part_access);
		if (rc)
			return FUNC1(rc);
	} else
		FUNC2(&smu_part_access);

	part = FUNC5(smu->of_node, pname, size);
	if (part == NULL) {
		FUNC0("trying to extract from SMU ...\n");
		part = FUNC6(id);
		if (part != NULL && size)
			*size = part->len << 2;
	}
	FUNC4(&smu_part_access);
	return part;
}