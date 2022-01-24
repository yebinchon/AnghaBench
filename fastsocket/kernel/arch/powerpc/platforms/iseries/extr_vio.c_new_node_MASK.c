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
struct device_node {int /*<<< orphan*/  parent; int /*<<< orphan*/  kref; int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OF_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static struct device_node *FUNC8(const char *path,
		struct device_node *parent)
{
	struct device_node *np = FUNC3(sizeof(*np), GFP_KERNEL);

	if (!np)
		return NULL;
	np->full_name = FUNC1(FUNC7(path) + 1, GFP_KERNEL);
	if (!np->full_name) {
		FUNC0(np);
		return NULL;
	}
	FUNC6(np->full_name, path);
	FUNC5(np, OF_DYNAMIC);
	FUNC2(&np->kref);
	np->parent = FUNC4(parent);
	return np;
}