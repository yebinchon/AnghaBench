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
struct isci_port {struct isci_host* owning_controller; } ;
struct isci_phy {int dummy; } ;
struct isci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isci_host*,struct isci_port*,struct isci_phy*) ; 

void FUNC1(struct isci_port *iport, struct isci_phy *iphy)
{
	struct isci_host *ihost = iport->owning_controller;

	/* notify the user. */
	FUNC0(ihost, iport, iphy);
}