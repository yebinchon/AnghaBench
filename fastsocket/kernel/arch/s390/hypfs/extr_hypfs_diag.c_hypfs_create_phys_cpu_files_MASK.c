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
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int TMP_SIZE ; 
 int /*<<< orphan*/  diag204_info_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (struct super_block*,void*,char*,char*) ; 
 void* FUNC4 (struct super_block*,void*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct super_block*,void*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
				       struct dentry *cpus_dir, void *cpu_info)
{
	struct dentry *cpu_dir;
	char buffer[TMP_SIZE];
	void *rc;

	FUNC9(buffer, TMP_SIZE, "%i", FUNC6(diag204_info_type,
							    cpu_info));
	cpu_dir = FUNC5(sb, cpus_dir, buffer);
	if (FUNC0(cpu_dir))
		return FUNC1(cpu_dir);
	rc = FUNC4(sb, cpu_dir, "mgmtime",
			      FUNC8(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	FUNC2(FUNC7(diag204_info_type, cpu_info), buffer);
	rc = FUNC3(sb, cpu_dir, "type", buffer);
	if (FUNC0(rc))
		return FUNC1(rc);
	return 0;
}