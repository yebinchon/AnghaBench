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
 struct device_node* FUNC0 (char*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char const*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m)
{
	struct device_node *root;
	const char *model = "";

	root = FUNC0("/");
	if (root)
		model = FUNC1(root, "model", NULL);
	FUNC3(m, "machine\t\t: CHRP %s\n", model);
	FUNC2(root);
}