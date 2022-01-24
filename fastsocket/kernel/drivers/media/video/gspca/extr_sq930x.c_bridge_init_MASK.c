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
struct ucbus_write_cmd {int member_0; int /*<<< orphan*/  member_1; } ;
struct sd {int /*<<< orphan*/  gspca_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQ930_GPIO_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ucbus_write_cmd const*,int,int) ; 

__attribute__((used)) static void FUNC2(struct sd *sd)
{
	static const struct ucbus_write_cmd clkfreq_cmd = {
				0xf031, 0	/* SQ930_CLKFREQ_60MHZ */
	};

	FUNC1(&sd->gspca_dev, &clkfreq_cmd, 1, 1);

	FUNC0(sd, SQ930_GPIO_POWER, 0xff00);
}