#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_transport_template {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_attrs; } ;
struct sas_internal {int /*<<< orphan*/  expander_attr_cont; int /*<<< orphan*/  end_dev_attr_cont; int /*<<< orphan*/  rphy_attr_cont; int /*<<< orphan*/  port_attr_cont; int /*<<< orphan*/  phy_attr_cont; TYPE_1__ t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sas_internal*) ; 
 struct sas_internal* FUNC1 (struct scsi_transport_template*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_transport_template *t)
{
	struct sas_internal *i = FUNC1(t);

	FUNC2(&i->t.host_attrs);
	FUNC2(&i->phy_attr_cont);
	FUNC2(&i->port_attr_cont);
	FUNC2(&i->rphy_attr_cont);
	FUNC2(&i->end_dev_attr_cont);
	FUNC2(&i->expander_attr_cont);

	FUNC0(i);
}