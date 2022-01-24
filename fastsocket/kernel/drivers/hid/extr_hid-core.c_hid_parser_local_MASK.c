#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int delimiter_depth; int delimiter_branch; unsigned int usage_minimum; } ;
struct TYPE_3__ {int usage_page; } ;
struct hid_parser {TYPE_2__ local; TYPE_1__ global; } ;
struct hid_item {scalar_t__ size; int tag; } ;
typedef  unsigned int __u32 ;

/* Variables and functions */
#define  HID_LOCAL_ITEM_TAG_DELIMITER 131 
#define  HID_LOCAL_ITEM_TAG_USAGE 130 
#define  HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM 129 
#define  HID_LOCAL_ITEM_TAG_USAGE_MINIMUM 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct hid_parser*,unsigned int) ; 
 unsigned int FUNC2 (struct hid_item*) ; 

__attribute__((used)) static int FUNC3(struct hid_parser *parser, struct hid_item *item)
{
	__u32 data;
	unsigned n;

	if (item->size == 0) {
		FUNC0("item data expected for local item\n");
		return -1;
	}

	data = FUNC2(item);

	switch (item->tag) {
	case HID_LOCAL_ITEM_TAG_DELIMITER:

		if (data) {
			/*
			 * We treat items before the first delimiter
			 * as global to all usage sets (branch 0).
			 * In the moment we process only these global
			 * items and the first delimiter set.
			 */
			if (parser->local.delimiter_depth != 0) {
				FUNC0("nested delimiters\n");
				return -1;
			}
			parser->local.delimiter_depth++;
			parser->local.delimiter_branch++;
		} else {
			if (parser->local.delimiter_depth < 1) {
				FUNC0("bogus close delimiter\n");
				return -1;
			}
			parser->local.delimiter_depth--;
		}
		return 1;

	case HID_LOCAL_ITEM_TAG_USAGE:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		if (item->size <= 2)
			data = (parser->global.usage_page << 16) + data;

		return FUNC1(parser, data);

	case HID_LOCAL_ITEM_TAG_USAGE_MINIMUM:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		if (item->size <= 2)
			data = (parser->global.usage_page << 16) + data;

		parser->local.usage_minimum = data;
		return 0;

	case HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		if (item->size <= 2)
			data = (parser->global.usage_page << 16) + data;

		for (n = parser->local.usage_minimum; n <= data; n++)
			if (FUNC1(parser, n)) {
				FUNC0("hid_add_usage failed\n");
				return -1;
			}
		return 0;

	default:

		FUNC0("unknown local item tag 0x%x\n", item->tag);
		return 0;
	}
	return 0;
}