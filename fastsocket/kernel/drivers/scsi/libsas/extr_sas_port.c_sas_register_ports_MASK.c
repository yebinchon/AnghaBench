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
struct sas_ha_struct {int num_phys; struct asd_sas_port** sas_port; } ;
struct asd_sas_port {int /*<<< orphan*/  disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_sas_port*,struct sas_ha_struct*,int) ; 

int FUNC2(struct sas_ha_struct *sas_ha)
{
	int i;

	/* initialize the ports and discovery */
	for (i = 0; i < sas_ha->num_phys; i++) {
		struct asd_sas_port *port = sas_ha->sas_port[i];

		FUNC1(port, sas_ha, i);
		FUNC0(&port->disc, port);
	}
	return 0;
}