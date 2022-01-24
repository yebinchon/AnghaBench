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
struct TYPE_2__ {int member_0; int member_1; } ;
struct jlj_command {int /*<<< orphan*/  instruction; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct jlj_command*) ; 
 int FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev)
{
	int i;
	int retval;
	struct jlj_command stop_commands[] = {
		{{0x71, 0x00}, 0},
		{{0x70, 0x09}, 0},
		{{0x71, 0x80}, 0},
		{{0x70, 0x05}, 0}
	};
	for (i = 0; i < FUNC0(stop_commands); i++) {
		retval = FUNC1(gspca_dev, stop_commands[i].instruction);
		if (retval < 0)
			return retval;
	}
	return retval;
}