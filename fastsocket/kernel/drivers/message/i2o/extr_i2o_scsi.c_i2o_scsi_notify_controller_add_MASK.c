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
struct i2o_scsi_host {int /*<<< orphan*/  scsi_host; } ;
struct i2o_controller {struct i2o_scsi_host** driver_data; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {size_t context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2o_scsi_host*) ; 
 TYPE_1__ i2o_scsi_driver ; 
 struct i2o_scsi_host* FUNC1 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i2o_controller *c)
{
	struct i2o_scsi_host *i2o_shost;
	int rc;

	i2o_shost = FUNC1(c);
	if (FUNC0(i2o_shost)) {
		FUNC3("Could not initialize SCSI host\n");
		return;
	}

	rc = FUNC4(i2o_shost->scsi_host, &c->device);
	if (rc) {
		FUNC3("Could not add SCSI host\n");
		FUNC5(i2o_shost->scsi_host);
		return;
	}

	c->driver_data[i2o_scsi_driver.context] = i2o_shost;

	FUNC2("new I2O SCSI host added\n");
}