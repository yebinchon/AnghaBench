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
struct i2o_controller {int /*<<< orphan*/ ** driver_data; } ;
struct TYPE_2__ {size_t context; } ;

/* Variables and functions */
 TYPE_1__ i2o_scsi_driver ; 
 struct i2o_scsi_host* FUNC0 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2o_controller *c)
{
	struct i2o_scsi_host *i2o_shost;
	i2o_shost = FUNC0(c);
	if (!i2o_shost)
		return;

	c->driver_data[i2o_scsi_driver.context] = NULL;

	FUNC3(i2o_shost->scsi_host);
	FUNC2(i2o_shost->scsi_host);
	FUNC1("I2O SCSI host removed\n");
}