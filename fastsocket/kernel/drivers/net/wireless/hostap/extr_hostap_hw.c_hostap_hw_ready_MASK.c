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
struct net_device {int dummy; } ;
struct local_info {scalar_t__ iw_mode; int /*<<< orphan*/  proc; scalar_t__ ddev; scalar_t__ dev; } ;
struct hostap_interface {struct local_info* local; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAP_INTERFACE_MAIN ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  dev_template ; 
 scalar_t__ FUNC0 (struct local_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct local_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct local_info*) ; 
 struct hostap_interface* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  prism2_registers_proc_fops ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct local_info*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct hostap_interface *iface;
	struct local_info *local;

	iface = FUNC3(dev);
	local = iface->local;
	local->ddev = FUNC0(local, HOSTAP_INTERFACE_MAIN, 0,
					   "", dev_template);

	if (local->ddev) {
		if (local->iw_mode == IW_MODE_INFRA ||
		    local->iw_mode == IW_MODE_ADHOC) {
			FUNC4(local->dev);
			FUNC4(local->ddev);
		}
		FUNC2(local);
#ifndef PRISM2_NO_PROCFS_DEBUG
		FUNC5("registers", 0, local->proc,
				 &prism2_registers_proc_fops, local);
#endif /* PRISM2_NO_PROCFS_DEBUG */
		FUNC1(local);
		return 0;
	}

	return -1;
}