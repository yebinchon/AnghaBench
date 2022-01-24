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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 char const* FUNC6 (char const*,char) ; 

__attribute__((used)) static struct device_node *FUNC7(const char *path)
{
	struct device_node *parent = NULL;
	char *parent_path = "/";
	size_t parent_path_len = FUNC6(path, '/') - path + 1;

	/* reject if path is "/" */
	if (!FUNC4(path, "/"))
		return FUNC0(-EINVAL);

	if (FUNC6(path, '/') != path) {
		parent_path = FUNC2(parent_path_len, GFP_KERNEL);
		if (!parent_path)
			return FUNC0(-ENOMEM);
		FUNC5(parent_path, path, parent_path_len);
	}
	parent = FUNC3(parent_path);
	if (!parent)
		return FUNC0(-EINVAL);
	if (FUNC4(parent_path, "/"))
		FUNC1(parent_path);
	return parent;
}