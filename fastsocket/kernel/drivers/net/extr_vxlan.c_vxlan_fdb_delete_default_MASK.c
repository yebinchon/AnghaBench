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
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 struct vxlan_fdb* FUNC0 (struct vxlan_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_zeros_mac ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_dev*,struct vxlan_fdb*) ; 

__attribute__((used)) static void FUNC4(struct vxlan_dev *vxlan)
{
	struct vxlan_fdb *f;

	FUNC1(&vxlan->hash_lock);
	f = FUNC0(vxlan, all_zeros_mac);
	if (f)
		FUNC3(vxlan, f);
	FUNC2(&vxlan->hash_lock);
}