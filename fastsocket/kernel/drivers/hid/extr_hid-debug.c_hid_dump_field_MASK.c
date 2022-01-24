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
struct seq_file {int dummy; } ;
struct hid_field {int maxusage; scalar_t__ logical_minimum; scalar_t__ logical_maximum; scalar_t__ physical_minimum; scalar_t__ physical_maximum; int unit; int flags; int /*<<< orphan*/  report_offset; int /*<<< orphan*/  report_count; int /*<<< orphan*/  report_size; scalar_t__ unit_exponent; TYPE_1__* usage; scalar_t__ logical; scalar_t__ physical; } ;
typedef  int __u32 ;
struct TYPE_2__ {scalar_t__ hid; } ;

/* Variables and functions */
 int HID_MAIN_ITEM_BUFFERED_BYTE ; 
 int HID_MAIN_ITEM_CONSTANT ; 
 int HID_MAIN_ITEM_NONLINEAR ; 
 int HID_MAIN_ITEM_NO_PREFERRED ; 
 int HID_MAIN_ITEM_NULL_STATE ; 
 int HID_MAIN_ITEM_RELATIVE ; 
 int HID_MAIN_ITEM_VARIABLE ; 
 int HID_MAIN_ITEM_VOLATILE ; 
 int HID_MAIN_ITEM_WRAP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,struct seq_file*) ; 

void FUNC3(struct hid_field *field, int n, struct seq_file *f) {
	int j;

	if (field->physical) {
		FUNC2(n, f);
		FUNC1(f, "Physical(");
		FUNC0(field->physical, f); FUNC1(f, ")\n");
	}
	if (field->logical) {
		FUNC2(n, f);
		FUNC1(f, "Logical(");
		FUNC0(field->logical, f); FUNC1(f, ")\n");
	}
	FUNC2(n, f); FUNC1(f, "Usage(%d)\n", field->maxusage);
	for (j = 0; j < field->maxusage; j++) {
		FUNC2(n+2, f); FUNC0(field->usage[j].hid, f); FUNC1(f, "\n");
	}
	if (field->logical_minimum != field->logical_maximum) {
		FUNC2(n, f); FUNC1(f, "Logical Minimum(%d)\n", field->logical_minimum);
		FUNC2(n, f); FUNC1(f, "Logical Maximum(%d)\n", field->logical_maximum);
	}
	if (field->physical_minimum != field->physical_maximum) {
		FUNC2(n, f); FUNC1(f, "Physical Minimum(%d)\n", field->physical_minimum);
		FUNC2(n, f); FUNC1(f, "Physical Maximum(%d)\n", field->physical_maximum);
	}
	if (field->unit_exponent) {
		FUNC2(n, f); FUNC1(f, "Unit Exponent(%d)\n", field->unit_exponent);
	}
	if (field->unit) {
		static const char *systems[5] = { "None", "SI Linear", "SI Rotation", "English Linear", "English Rotation" };
		static const char *units[5][8] = {
			{ "None", "None", "None", "None", "None", "None", "None", "None" },
			{ "None", "Centimeter", "Gram", "Seconds", "Kelvin",     "Ampere", "Candela", "None" },
			{ "None", "Radians",    "Gram", "Seconds", "Kelvin",     "Ampere", "Candela", "None" },
			{ "None", "Inch",       "Slug", "Seconds", "Fahrenheit", "Ampere", "Candela", "None" },
			{ "None", "Degrees",    "Slug", "Seconds", "Fahrenheit", "Ampere", "Candela", "None" }
		};

		int i;
		int sys;
                __u32 data = field->unit;

		/* First nibble tells us which system we're in. */
		sys = data & 0xf;
		data >>= 4;

		if(sys > 4) {
			FUNC2(n, f); FUNC1(f, "Unit(Invalid)\n");
		}
		else {
			int earlier_unit = 0;

			FUNC2(n, f); FUNC1(f, "Unit(%s : ", systems[sys]);

			for (i=1 ; i<sizeof(__u32)*2 ; i++) {
				char nibble = data & 0xf;
				data >>= 4;
				if (nibble != 0) {
					if(earlier_unit++ > 0)
						FUNC1(f, "*");
					FUNC1(f, "%s", units[sys][i]);
					if(nibble != 1) {
						/* This is a _signed_ nibble(!) */

						int val = nibble & 0x7;
						if(nibble & 0x08)
							val = -((0x7 & ~val) +1);
						FUNC1(f, "^%d", val);
					}
				}
			}
			FUNC1(f, ")\n");
		}
	}
	FUNC2(n, f); FUNC1(f, "Report Size(%u)\n", field->report_size);
	FUNC2(n, f); FUNC1(f, "Report Count(%u)\n", field->report_count);
	FUNC2(n, f); FUNC1(f, "Report Offset(%u)\n", field->report_offset);

	FUNC2(n, f); FUNC1(f, "Flags( ");
	j = field->flags;
	FUNC1(f, "%s", HID_MAIN_ITEM_CONSTANT & j ? "Constant " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_VARIABLE & j ? "Variable " : "Array ");
	FUNC1(f, "%s", HID_MAIN_ITEM_RELATIVE & j ? "Relative " : "Absolute ");
	FUNC1(f, "%s", HID_MAIN_ITEM_WRAP & j ? "Wrap " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_NONLINEAR & j ? "NonLinear " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_NO_PREFERRED & j ? "NoPreferredState " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_NULL_STATE & j ? "NullState " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_VOLATILE & j ? "Volatile " : "");
	FUNC1(f, "%s", HID_MAIN_ITEM_BUFFERED_BYTE & j ? "BufferedByte " : "");
	FUNC1(f, ")\n");
}