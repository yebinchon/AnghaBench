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
struct sas_ha_struct {int dummy; } ;
struct asd_sas_port {int id; int /*<<< orphan*/  dev_list_lock; struct sas_ha_struct* ha; int /*<<< orphan*/  phy_list; int /*<<< orphan*/  phy_list_lock; int /*<<< orphan*/  destroy_list; int /*<<< orphan*/  disco_list; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_sas_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct asd_sas_port *port,
			  struct sas_ha_struct *sas_ha, int i)
{
	FUNC1(port, 0, sizeof(*port));
	port->id = i;
	FUNC0(&port->dev_list);
	FUNC0(&port->disco_list);
	FUNC0(&port->destroy_list);
	FUNC2(&port->phy_list_lock);
	FUNC0(&port->phy_list);
	port->ha = sas_ha;

	FUNC2(&port->dev_list_lock);
}