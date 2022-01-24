#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct seq_file {struct acpi_thermal* private; } ;
struct TYPE_19__ {int count; int /*<<< orphan*/ * handles; } ;
struct TYPE_18__ {scalar_t__ valid; } ;
struct TYPE_20__ {TYPE_6__ devices; int /*<<< orphan*/  tsp; int /*<<< orphan*/  tc2; int /*<<< orphan*/  tc1; int /*<<< orphan*/  temperature; TYPE_5__ flags; } ;
struct TYPE_16__ {scalar_t__ valid; } ;
struct TYPE_17__ {int /*<<< orphan*/  temperature; TYPE_3__ flags; } ;
struct TYPE_14__ {scalar_t__ valid; } ;
struct TYPE_15__ {int /*<<< orphan*/  temperature; TYPE_1__ flags; } ;
struct TYPE_13__ {TYPE_10__* active; TYPE_7__ passive; TYPE_4__ hot; TYPE_2__ critical; } ;
struct acpi_thermal {TYPE_11__ trips; } ;
struct acpi_device {int dummy; } ;
typedef  scalar_t__ acpi_status ;
struct TYPE_22__ {int count; int /*<<< orphan*/ * handles; } ;
struct TYPE_21__ {int /*<<< orphan*/  valid; } ;
struct TYPE_12__ {TYPE_9__ devices; int /*<<< orphan*/  temperature; TYPE_8__ flags; } ;

/* Variables and functions */
 int ACPI_THERMAL_MAX_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 char* FUNC2 (struct acpi_device*) ; 
 scalar_t__ nocrt ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *offset)
{
	struct acpi_thermal *tz = seq->private;
	struct acpi_device *device;
	acpi_status status;

	int i = 0;
	int j = 0;


	if (!tz)
		goto end;

	if (tz->trips.critical.flags.valid)
		FUNC3(seq, "critical (S5):           %ld C%s",
			   FUNC0(tz->trips.critical.temperature),
			   nocrt ? " <disabled>\n" : "\n");

	if (tz->trips.hot.flags.valid)
		FUNC3(seq, "hot (S4):                %ld C%s",
			   FUNC0(tz->trips.hot.temperature),
			   nocrt ? " <disabled>\n" : "\n");

	if (tz->trips.passive.flags.valid) {
		FUNC3(seq,
			   "passive:                 %ld C: tc1=%lu tc2=%lu tsp=%lu devices=",
			   FUNC0(tz->trips.passive.temperature),
			   tz->trips.passive.tc1, tz->trips.passive.tc2,
			   tz->trips.passive.tsp);
		for (j = 0; j < tz->trips.passive.devices.count; j++) {
			status = FUNC1(tz->trips.passive.devices.
						     handles[j], &device);
			FUNC3(seq, "%4.4s ", status ? "" :
				   FUNC2(device));
		}
		FUNC4(seq, "\n");
	}

	for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE; i++) {
		if (!(tz->trips.active[i].flags.valid))
			break;
		FUNC3(seq, "active[%d]:               %ld C: devices=",
			   i,
			   FUNC0(tz->trips.active[i].temperature));
		for (j = 0; j < tz->trips.active[i].devices.count; j++){
			status = FUNC1(tz->trips.active[i].
						     devices.handles[j],
						     &device);
			FUNC3(seq, "%4.4s ", status ? "" :
				   FUNC2(device));
		}
		FUNC4(seq, "\n");
	}

      end:
	return 0;
}