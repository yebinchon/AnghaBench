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
struct raw3215_info {unsigned int line_pos; char* buffer; size_t head; int flags; int /*<<< orphan*/  cdev; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int RAW3215_BUFFER_SIZE ; 
 int RAW3215_WORKING ; 
 unsigned int TAB_STOP_SIZE ; 
 scalar_t__* _ascebc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3215_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct raw3215_info *raw, unsigned char ch)
{
	unsigned long flags;
	unsigned int length, i;

	FUNC4(FUNC0(raw->cdev), flags);
	if (ch == '\t') {
		length = TAB_STOP_SIZE - (raw->line_pos%TAB_STOP_SIZE);
		raw->line_pos += length;
		ch = ' ';
	} else if (ch == '\n') {
		length = 1;
		raw->line_pos = 0;
	} else {
		length = 1;
		raw->line_pos++;
	}
	FUNC1(raw, length);

	for (i = 0; i < length; i++) {
		raw->buffer[raw->head] = (char) _ascebc[(int) ch];
		raw->head = (raw->head + 1) & (RAW3215_BUFFER_SIZE - 1);
		raw->count++;
	}
	if (!(raw->flags & RAW3215_WORKING)) {
		FUNC2(raw);
		/* start or queue request */
		FUNC3(raw);
	}
	FUNC5(FUNC0(raw->cdev), flags);
}