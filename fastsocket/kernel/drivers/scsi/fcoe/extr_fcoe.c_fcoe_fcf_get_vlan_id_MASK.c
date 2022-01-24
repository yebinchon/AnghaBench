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
struct fcoe_interface {int /*<<< orphan*/  netdev; } ;
struct fcoe_fcf_device {int /*<<< orphan*/  vlan_id; } ;
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int dummy; } ;

/* Variables and functions */
 struct fcoe_ctlr* FUNC0 (struct fcoe_ctlr_device*) ; 
 struct fcoe_interface* FUNC1 (struct fcoe_ctlr*) ; 
 struct fcoe_ctlr_device* FUNC2 (struct fcoe_fcf_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fcoe_fcf_device *fcf_dev)
{
	struct fcoe_ctlr_device *ctlr_dev =
		FUNC2(fcf_dev);
	struct fcoe_ctlr *ctlr = FUNC0(ctlr_dev);
	struct fcoe_interface *fcoe = FUNC1(ctlr);

	fcf_dev->vlan_id = FUNC3(fcoe->netdev);
}