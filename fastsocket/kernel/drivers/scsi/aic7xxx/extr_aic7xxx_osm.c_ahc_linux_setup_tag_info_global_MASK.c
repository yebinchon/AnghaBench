#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* tag_commands; } ;

/* Variables and functions */
 int AHC_NUM_TARGETS ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* aic7xxx_tag_info ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(char *p)
{
	int tags, i, j;

	tags = FUNC2(p + 1, NULL, 0) & 0xff;
	FUNC1("Setting Global Tags= %d\n", tags);

	for (i = 0; i < FUNC0(aic7xxx_tag_info); i++) {
		for (j = 0; j < AHC_NUM_TARGETS; j++) {
			aic7xxx_tag_info[i].tag_commands[j] = tags;
		}
	}
}