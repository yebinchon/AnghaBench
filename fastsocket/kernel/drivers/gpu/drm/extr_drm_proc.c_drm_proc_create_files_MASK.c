#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct proc_dir_entry {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct drm_minor {int /*<<< orphan*/  proc_root; TYPE_2__ proc_nodes; struct drm_device* dev; } ;
struct drm_info_node {int /*<<< orphan*/  list; struct drm_info_list* info_ent; struct drm_minor* minor; } ;
struct drm_info_list {int driver_features; int /*<<< orphan*/  name; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int driver_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  drm_proc_fops ; 
 TYPE_3__* drm_proc_list ; 
 int /*<<< orphan*/  FUNC1 (struct drm_info_node*) ; 
 struct drm_info_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct proc_dir_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc_dir_entry*,int /*<<< orphan*/ *,struct drm_info_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct drm_info_list *files, int count,
			  struct proc_dir_entry *root, struct drm_minor *minor)
{
	struct drm_device *dev = minor->dev;
	struct proc_dir_entry *ent;
	struct drm_info_node *tmp;
	int i, ret;

	for (i = 0; i < count; i++) {
		u32 features = files[i].driver_features;

		if (features != 0 &&
		    (dev->driver->driver_features & features) != features)
			continue;

		tmp = FUNC2(sizeof(struct drm_info_node), GFP_KERNEL);
		if (tmp == NULL) {
			ret = -1;
			goto fail;
		}
		tmp->minor = minor;
		tmp->info_ent = &files[i];
		FUNC3(&tmp->list, &minor->proc_nodes.list);

		ent = FUNC5(files[i].name, S_IRUGO, root,
				       &drm_proc_fops, tmp);
		if (!ent) {
			FUNC0("Cannot create /proc/dri/%s/%s\n",
				  root->name, files[i].name);
			FUNC4(&tmp->list);
			FUNC1(tmp);
			ret = -1;
			goto fail;
		}

	}
	return 0;

fail:
	for (i = 0; i < count; i++)
		FUNC6(drm_proc_list[i].name, minor->proc_root);
	return ret;
}