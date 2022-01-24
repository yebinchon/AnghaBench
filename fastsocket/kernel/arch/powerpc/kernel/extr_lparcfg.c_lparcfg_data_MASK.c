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
struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_ISERIES ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  MODULE_VERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seq_file*,void*) ; 
 struct device_node* FUNC2 (char*) ; 
 void* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, void *v)
{
	struct device_node *rootdn;
	const char *model = "";
	const char *system_id = "";
	const char *tmp;
	const unsigned int *lp_index_ptr;
	unsigned int lp_index = 0;

	FUNC6(m, "%s %s \n", MODULE_NAME, MODULE_VERS);

	rootdn = FUNC2("/");
	if (rootdn) {
		tmp = FUNC3(rootdn, "model", NULL);
		if (tmp) {
			model = tmp;
			/* Skip "IBM," - see platforms/iseries/dt.c */
			if (FUNC0(FW_FEATURE_ISERIES))
				model += 4;
		}
		tmp = FUNC3(rootdn, "system-id", NULL);
		if (tmp) {
			system_id = tmp;
			/* Skip "IBM," - see platforms/iseries/dt.c */
			if (FUNC0(FW_FEATURE_ISERIES))
				system_id += 4;
		}
		lp_index_ptr = FUNC3(rootdn, "ibm,partition-no",
					NULL);
		if (lp_index_ptr)
			lp_index = *lp_index_ptr;
		FUNC4(rootdn);
	}
	FUNC6(m, "serial_number=%s\n", system_id);
	FUNC6(m, "system_type=%s\n", model);
	FUNC6(m, "partition_id=%d\n", (int)lp_index);

	if (FUNC0(FW_FEATURE_ISERIES))
		return FUNC1(m, v);
	return FUNC5(m, v);
}