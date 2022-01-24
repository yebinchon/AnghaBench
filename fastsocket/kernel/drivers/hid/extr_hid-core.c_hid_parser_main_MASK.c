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
struct hid_parser {int /*<<< orphan*/  local; } ;
struct hid_item {int tag; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
#define  HID_MAIN_ITEM_TAG_BEGIN_COLLECTION 132 
#define  HID_MAIN_ITEM_TAG_END_COLLECTION 131 
#define  HID_MAIN_ITEM_TAG_FEATURE 130 
#define  HID_MAIN_ITEM_TAG_INPUT 129 
#define  HID_MAIN_ITEM_TAG_OUTPUT 128 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int FUNC0 (struct hid_parser*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct hid_parser*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hid_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hid_parser*,int) ; 

__attribute__((used)) static int FUNC6(struct hid_parser *parser, struct hid_item *item)
{
	__u32 data;
	int ret;

	data = FUNC3(item);

	switch (item->tag) {
	case HID_MAIN_ITEM_TAG_BEGIN_COLLECTION:
		ret = FUNC5(parser, data & 0xff);
		break;
	case HID_MAIN_ITEM_TAG_END_COLLECTION:
		ret = FUNC0(parser);
		break;
	case HID_MAIN_ITEM_TAG_INPUT:
		ret = FUNC2(parser, HID_INPUT_REPORT, data);
		break;
	case HID_MAIN_ITEM_TAG_OUTPUT:
		ret = FUNC2(parser, HID_OUTPUT_REPORT, data);
		break;
	case HID_MAIN_ITEM_TAG_FEATURE:
		ret = FUNC2(parser, HID_FEATURE_REPORT, data);
		break;
	default:
		FUNC1("unknown main item tag 0x%x\n", item->tag);
		ret = 0;
	}

	FUNC4(&parser->local, 0, sizeof(parser->local));	/* Reset the local parser environment */

	return ret;
}