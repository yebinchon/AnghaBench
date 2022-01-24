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
struct super_block {int dummy; } ;
typedef  void dentry ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int LPAR_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diag204_info_type ; 
 int FUNC3 (struct super_block*,void*,void*) ; 
 void* FUNC4 (struct super_block*,void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(struct super_block *sb,
				     struct dentry *systems_dir, void *part_hdr)
{
	struct dentry *cpus_dir;
	struct dentry *lpar_dir;
	char lpar_name[LPAR_NAME_LEN + 1];
	void *cpu_info;
	int i;

	FUNC5(diag204_info_type, part_hdr, lpar_name);
	lpar_name[LPAR_NAME_LEN] = 0;
	lpar_dir = FUNC4(sb, systems_dir, lpar_name);
	if (FUNC1(lpar_dir))
		return lpar_dir;
	cpus_dir = FUNC4(sb, lpar_dir, "cpus");
	if (FUNC1(cpus_dir))
		return cpus_dir;
	cpu_info = part_hdr + FUNC7(diag204_info_type);
	for (i = 0; i < FUNC6(diag204_info_type, part_hdr); i++) {
		int rc;
		rc = FUNC3(sb, cpus_dir, cpu_info);
		if (rc)
			return FUNC0(rc);
		cpu_info += FUNC2(diag204_info_type);
	}
	return cpu_info;
}