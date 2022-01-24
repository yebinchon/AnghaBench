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
struct transport_container {int dummy; } ;
struct sas_host_attrs {scalar_t__ next_port_id; scalar_t__ next_expander_id; scalar_t__ next_target_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  rphy_list; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,char*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct sas_host_attrs* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct transport_container *tc, struct device *dev,
			  struct device *cdev)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct sas_host_attrs *sas_host = FUNC5(shost);

	FUNC0(&sas_host->rphy_list);
	FUNC3(&sas_host->lock);
	sas_host->next_target_id = 0;
	sas_host->next_expander_id = 0;
	sas_host->next_port_id = 0;

	if (FUNC4(shost, NULL))
		FUNC1(KERN_ERR, dev, "fail to a bsg device %d\n",
			   shost->host_no);

	return 0;
}