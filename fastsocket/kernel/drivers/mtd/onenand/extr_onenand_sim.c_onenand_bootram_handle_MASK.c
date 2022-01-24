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
struct onenand_chip {int /*<<< orphan*/  base; } ;

/* Variables and functions */
#define  ONENAND_CMD_READID 128 
 int /*<<< orphan*/  device_id ; 
 int /*<<< orphan*/  manuf_id ; 
 int /*<<< orphan*/  version_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct onenand_chip *this, int cmd)
{
	switch (cmd) {
	case ONENAND_CMD_READID:
		FUNC0(manuf_id, this->base);
		FUNC0(device_id, this->base + 2);
		FUNC0(version_id, this->base + 4);
		break;

	default:
		/* REVIST: Handle other commands */
		break;
	}
}