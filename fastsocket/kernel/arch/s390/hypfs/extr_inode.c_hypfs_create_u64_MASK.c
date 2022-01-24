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
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int REG_FILE_MODE ; 
 int S_IFREG ; 
 int TMP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct super_block*,struct dentry*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,unsigned long long) ; 

struct dentry *FUNC7(struct super_block *sb, struct dentry *dir,
				const char *name, __u64 value)
{
	char *buffer;
	char tmp[TMP_SIZE];
	struct dentry *dentry;

	FUNC6(tmp, TMP_SIZE, "%llu\n", (unsigned long long int)value);
	buffer = FUNC5(tmp, GFP_KERNEL);
	if (!buffer)
		return FUNC0(-ENOMEM);
	dentry =
	    FUNC3(sb, dir, name, buffer, S_IFREG | REG_FILE_MODE);
	if (FUNC1(dentry)) {
		FUNC4(buffer);
		return FUNC0(-ENOMEM);
	}
	FUNC2(dentry);
	return dentry;
}