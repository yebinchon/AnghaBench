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
struct sas_rphy {int dummy; } ;
struct sas_port {int dummy; } ;
struct sas_host_attrs {int /*<<< orphan*/  lock; int /*<<< orphan*/  next_port_id; } ;
struct sas_expander_device {int /*<<< orphan*/  next_port_id; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct sas_rphy* FUNC0 (struct device*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sas_expander_device* FUNC4 (struct sas_rphy*) ; 
 struct sas_port* FUNC5 (struct device*,int) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 struct sas_host_attrs* FUNC7 (struct Scsi_Host*) ; 

struct sas_port *FUNC8(struct device *parent)
{
	int index;
	struct Scsi_Host *shost = FUNC1(parent);
	struct sas_host_attrs *sas_host = FUNC7(shost);

	/* FIXME: use idr for this eventually */
	FUNC2(&sas_host->lock);
	if (FUNC6(parent)) {
		struct sas_rphy *rphy = FUNC0(parent);
		struct sas_expander_device *exp = FUNC4(rphy);

		index = exp->next_port_id++;
	} else
		index = sas_host->next_port_id++;
	FUNC3(&sas_host->lock);
	return FUNC5(parent, index);
}