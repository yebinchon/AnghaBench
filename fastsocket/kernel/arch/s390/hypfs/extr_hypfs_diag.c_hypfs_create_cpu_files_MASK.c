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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ INFO_EXT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int TMP_SIZE ; 
 scalar_t__ FUNC2 (scalar_t__,void*) ; 
 int FUNC3 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*) ; 
 scalar_t__ FUNC5 (scalar_t__,void*) ; 
 scalar_t__ FUNC6 (scalar_t__,void*) ; 
 scalar_t__ diag204_info_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (struct super_block*,struct dentry*,char*,char*) ; 
 void* FUNC9 (struct super_block*,struct dentry*,char*,scalar_t__) ; 
 struct dentry* FUNC10 (struct super_block*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb,
				  struct dentry *cpus_dir, void *cpu_info)
{
	struct dentry *cpu_dir;
	char buffer[TMP_SIZE];
	void *rc;

	FUNC11(buffer, TMP_SIZE, "%d", FUNC3(diag204_info_type,
							    cpu_info));
	cpu_dir = FUNC10(sb, cpus_dir, buffer);
	rc = FUNC9(sb, cpu_dir, "mgmtime",
			      FUNC2(diag204_info_type, cpu_info) -
			      FUNC5(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	rc = FUNC9(sb, cpu_dir, "cputime",
			      FUNC5(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	if (diag204_info_type == INFO_EXT) {
		rc = FUNC9(sb, cpu_dir, "onlinetime",
				      FUNC6(diag204_info_type,
							    cpu_info));
		if (FUNC0(rc))
			return FUNC1(rc);
	}
	FUNC7(FUNC4(diag204_info_type, cpu_info), buffer);
	rc = FUNC8(sb, cpu_dir, "type", buffer);
	if (FUNC0(rc))
		return FUNC1(rc);
	return 0;
}