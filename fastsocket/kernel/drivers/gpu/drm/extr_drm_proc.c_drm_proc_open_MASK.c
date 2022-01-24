#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_4__ {struct drm_info_node* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  show; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,struct drm_info_node*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct drm_info_node* node = FUNC0(inode)->data;

	return FUNC1(file, node->info_ent->show, node);
}