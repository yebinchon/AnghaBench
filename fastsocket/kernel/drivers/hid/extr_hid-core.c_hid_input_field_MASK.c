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
struct hid_field {unsigned int report_count; unsigned int report_offset; unsigned int report_size; scalar_t__ logical_minimum; scalar_t__ logical_maximum; int flags; scalar_t__* value; TYPE_1__* usage; } ;
struct hid_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __s32 ;
struct TYPE_2__ {scalar_t__ hid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HID_MAIN_ITEM_VARIABLE ; 
 scalar_t__ HID_UP_KEYBOARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct hid_field*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct hid_device *hid, struct hid_field *field,
			    __u8 *data, int interrupt)
{
	unsigned n;
	unsigned count = field->report_count;
	unsigned offset = field->report_offset;
	unsigned size = field->report_size;
	__s32 min = field->logical_minimum;
	__s32 max = field->logical_maximum;
	__s32 *value;

	if (!(value = FUNC3(sizeof(__s32) * count, GFP_ATOMIC)))
		return;

	for (n = 0; n < count; n++) {

			value[n] = min < 0 ? FUNC6(FUNC0(data, offset + n * size, size), size) :
						    FUNC0(data, offset + n * size, size);

			if (!(field->flags & HID_MAIN_ITEM_VARIABLE) /* Ignore report if ErrorRollOver */
			    && value[n] >= min && value[n] <= max
			    && field->usage[value[n] - min].hid == HID_UP_KEYBOARD + 1)
				goto exit;
	}

	for (n = 0; n < count; n++) {

		if (HID_MAIN_ITEM_VARIABLE & field->flags) {
			FUNC1(hid, field, &field->usage[n], value[n], interrupt);
			continue;
		}

		if (field->value[n] >= min && field->value[n] <= max
			&& field->usage[field->value[n] - min].hid
			&& FUNC5(value, field->value[n], count))
				FUNC1(hid, field, &field->usage[field->value[n] - min], 0, interrupt);

		if (value[n] >= min && value[n] <= max
			&& field->usage[value[n] - min].hid
			&& FUNC5(field->value, value[n], count))
				FUNC1(hid, field, &field->usage[value[n] - min], 1, interrupt);
	}

	FUNC4(field->value, value, count * sizeof(__s32));
exit:
	FUNC2(value);
}