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
typedef  int /*<<< orphan*/  unit ;
typedef  int u32 ;
struct vio_resource {int* rsrcname; int* type; int* model; } ;
struct proc_dir_entry {int dummy; } ;
struct device_node {int /*<<< orphan*/  pde; int /*<<< orphan*/  full_name; void* type; void* name; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 void* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static struct device_node *FUNC10(struct device_node *parent,
		const char *name, u32 reg, u32 unit, const char *type,
		const char *compat, struct vio_resource *res)
{
	struct device_node *np;
	char path[32];

	FUNC8(path, sizeof(path), "/vdevice/%s@%08x", name, reg);
	np = FUNC3(path, parent);
	if (!np)
		return NULL;
	if (!FUNC1(np, "name", name) ||
		!FUNC1(np, "device_type", type) ||
		!FUNC1(np, "compatible", compat) ||
		!FUNC0(np, "reg", sizeof(reg), &reg) ||
		!FUNC0(np, "linux,unit_address",
			sizeof(unit), &unit)) {
		goto node_free;
	}
	if (res) {
		if (!FUNC0(np, "linux,vio_rsrcname",
				sizeof(res->rsrcname), res->rsrcname) ||
			!FUNC0(np, "linux,vio_type",
				sizeof(res->type), res->type) ||
			!FUNC0(np, "linux,vio_model",
				sizeof(res->model), res->model))
			goto node_free;
	}
	np->name = FUNC5(np, "name", NULL);
	np->type = FUNC5(np, "device_type", NULL);
	FUNC4(np);
#ifdef CONFIG_PROC_DEVICETREE
	if (parent->pde) {
		struct proc_dir_entry *ent;

		ent = proc_mkdir(strrchr(np->full_name, '/') + 1, parent->pde);
		if (ent)
			proc_device_tree_add_node(np, ent);
	}
#endif
	return np;

 node_free:
	FUNC2(np);
	return NULL;
}