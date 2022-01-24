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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static struct device_node *FUNC5(const char *path)
{
	struct device_node *parent;
	char *last_slash;

	last_slash = FUNC4(path, '/');
	if (last_slash == path) {
		parent = FUNC2("/");
	} else {
		char *parent_path;
		int parent_path_len = last_slash - path + 1;
		parent_path = FUNC1(parent_path_len, GFP_KERNEL);
		if (!parent_path)
			return NULL;

		FUNC3(parent_path, path, parent_path_len);
		parent = FUNC2(parent_path);
		FUNC0(parent_path);
	}

	return parent;
}