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
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct acpi_ipmi_msg {struct acpi_ipmi_device* device; int /*<<< orphan*/  head; int /*<<< orphan*/  tx_complete; } ;
struct acpi_ipmi_device {struct pnp_dev* pnp_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct acpi_ipmi_msg* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct acpi_ipmi_msg *FUNC4(struct acpi_ipmi_device *ipmi)
{
	struct acpi_ipmi_msg *ipmi_msg;
	struct pnp_dev *pnp_dev = ipmi->pnp_dev;

	ipmi_msg = FUNC3(sizeof(struct acpi_ipmi_msg), GFP_KERNEL);
	if (!ipmi_msg)	{
		FUNC1(&pnp_dev->dev, "Can't allocate memory for ipmi_msg\n");
		return NULL;
	}
	FUNC2(&ipmi_msg->tx_complete);
	FUNC0(&ipmi_msg->head);
	ipmi_msg->device = ipmi;
	return ipmi_msg;
}