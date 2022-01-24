#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {unsigned long long proc_id; int pblk_length; scalar_t__ pblk_address; } ;
union acpi_object {TYPE_4__ integer; TYPE_2__ processor; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {scalar_t__ address; int /*<<< orphan*/  duty_width; int /*<<< orphan*/  duty_offset; } ;
struct TYPE_7__ {int bm_control; } ;
struct acpi_processor {unsigned long long acpi_id; int id; int /*<<< orphan*/  handle; TYPE_3__ throttling; scalar_t__ pblk; TYPE_1__ flags; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct acpi_buffer {int member_0; union acpi_object* member_1; } ;
typedef  int acpi_status ;
struct TYPE_12__ {int /*<<< orphan*/  duty_width; int /*<<< orphan*/  duty_offset; scalar_t__ pm2_control_length; scalar_t__ pm2_control_block; } ;
struct TYPE_11__ {int /*<<< orphan*/  smp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ACPI_PROCESSOR_OBJECT_HID ; 
 scalar_t__ FUNC2 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  METHOD_NAME__UID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 struct acpi_processor* FUNC5 (struct acpi_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 TYPE_6__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_processor*) ; 
 int FUNC9 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_5__ errata ; 
 int FUNC12 (int /*<<< orphan*/ ,int,unsigned long long) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct acpi_device *device)
{
	acpi_status status = 0;
	union acpi_object object = { 0 };
	struct acpi_buffer buffer = { sizeof(union acpi_object), &object };
	struct acpi_processor *pr;
	int cpu_index, device_declaration = 0;
	static int cpu0_initialized;

	pr = FUNC5(device);
	if (!pr)
		return -EINVAL;

	if (FUNC13() > 1)
		errata.smp = TRUE;

	FUNC8(pr);

	/*
	 * Check to see if we have bus mastering arbitration control.  This
	 * is required for proper C3 usage (to maintain cache coherency).
	 */
	if (acpi_gbl_FADT.pm2_control_block && acpi_gbl_FADT.pm2_control_length) {
		pr->flags.bm_control = 1;
		FUNC0((ACPI_DB_INFO,
				  "Bus mastering arbitration control present\n"));
	} else
		FUNC0((ACPI_DB_INFO,
				  "No bus mastering arbitration control\n"));

	if (!FUNC16(FUNC4(device), ACPI_PROCESSOR_OBJECT_HID)) {
		/* Declared with "Processor" statement; match ProcessorID */
		status = FUNC7(pr->handle, NULL, NULL, &buffer);
		if (FUNC1(status)) {
			FUNC11(&device->dev,
				"Failed to evaluate processor object (0x%x)\n",
				status);
			return -ENODEV;
		}

		/*
		 * TBD: Synch processor ID (via LAPIC/LSAPIC structures) on SMP.
		 *      >>> 'acpi_get_processor_id(acpi_id, &id)' in
		 *      arch/xxx/acpi.c
		 */
		pr->acpi_id = object.processor.proc_id;
	} else {
		/*
		 * Declared with "Device" statement; match _UID.
		 * Note that we don't handle string _UIDs yet.
		 */
		unsigned long long value;
		status = FUNC6(pr->handle, METHOD_NAME__UID,
						NULL, &value);
		if (FUNC1(status)) {
			FUNC11(&device->dev,
				"Failed to evaluate processor _UID (0x%x)\n",
				status);
			return -ENODEV;
		}
		device_declaration = 1;
		pr->acpi_id = value;
	}
	cpu_index = FUNC12(pr->handle, device_declaration, pr->acpi_id);

	/* Handle UP system running SMP kernel, with no LAPIC in MADT */
	if (!cpu0_initialized && (cpu_index == -1) &&
	    (FUNC13() == 1)) {
		cpu_index = 0;
	}

	cpu0_initialized = 1;

	pr->id = cpu_index;

	/*
	 *  Extra Processor objects may be enumerated on MP systems with
	 *  less than the max # of CPUs. They should be ignored _iff
	 *  they are physically not present.
	 */
	if (pr->id == -1) {
		if (FUNC1(FUNC9(pr)))
			return -ENODEV;
	}
	/*
	 * On some boxes several processors use the same processor bus id.
	 * But they are located in different scope. For example:
	 * \_SB.SCK0.CPU0
	 * \_SB.SCK1.CPU0
	 * Rename the processor device bus id. And the new bus id will be
	 * generated as the following format:
	 * CPU+CPU ID.
	 */
	FUNC15(FUNC3(device), "CPU%X", pr->id);
	FUNC0((ACPI_DB_INFO, "Processor [%d:%d]\n", pr->id,
			  pr->acpi_id));

	if (!object.processor.pblk_address)
		FUNC0((ACPI_DB_INFO, "No PBLK (NULL address)\n"));
	else if (object.processor.pblk_length != 6)
		FUNC11(&device->dev, "Invalid PBLK length [%d]\n",
			    object.processor.pblk_length);
	else {
		pr->throttling.address = object.processor.pblk_address;
		pr->throttling.duty_offset = acpi_gbl_FADT.duty_offset;
		pr->throttling.duty_width = acpi_gbl_FADT.duty_width;

		pr->pblk = object.processor.pblk_address;

		/*
		 * We don't care about error returns - we just try to mark
		 * these reserved so that nobody else is confused into thinking
		 * that this region might be unused..
		 *
		 * (In particular, allocating the IO range for Cardbus)
		 */
		FUNC14(pr->throttling.address, 6, "ACPI CPU throttle");
	}

	/*
	 * If ACPI describes a slot number for this CPU, we can use it
	 * ensure we get the right value in the "physical id" field
	 * of /proc/cpuinfo
	 */
	status = FUNC7(pr->handle, "_SUN", NULL, &buffer);
	if (FUNC2(status))
		FUNC10(pr->id, object.integer.value);

	return 0;
}