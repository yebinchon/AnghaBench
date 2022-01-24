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
struct hid_field {unsigned int report_count; unsigned int report_offset; unsigned int report_size; scalar_t__ logical_minimum; int /*<<< orphan*/ * value; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hid_field *field, __u8 *data)
{
	unsigned count = field->report_count;
	unsigned offset = field->report_offset;
	unsigned size = field->report_size;
	unsigned bitsused = offset + count * size;
	unsigned n;

	/* make sure the unused bits in the last byte are zeros */
	if (count > 0 && size > 0 && (bitsused % 8) != 0)
		data[(bitsused-1)/8] &= (1 << (bitsused % 8)) - 1;

	for (n = 0; n < count; n++) {
		if (field->logical_minimum < 0)	/* signed values */
			FUNC0(data, offset + n * size, size, FUNC1(field->value[n], size));
		else				/* unsigned values */
			FUNC0(data, offset + n * size, size, field->value[n]);
	}
}