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
typedef  int u16 ;
struct ucbus_write_cmd {int member_0; int member_1; } ;
struct sd {int /*<<< orphan*/  gspca_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucbus_write_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ucbus_write_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sd *sd, u16 ppl)
{
	struct ucbus_write_cmd cmds[2] = {
		{0xf810, ppl >> 8},
		{0xf811, ppl}
	};

	FUNC1(&sd->gspca_dev, cmds, FUNC0(cmds), 2);
}