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
struct hid_parser {int /*<<< orphan*/  collection_stack_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct hid_parser *parser)
{
	if (!parser->collection_stack_ptr) {
		FUNC0("collection stack underflow\n");
		return -1;
	}
	parser->collection_stack_ptr--;
	return 0;
}