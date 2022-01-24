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
struct psmouse {int /*<<< orphan*/  ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned char TP_MAGIC_IDENT ; 
 int /*<<< orphan*/  TP_READ_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, unsigned char *firmware_id)
{
	unsigned char param[2] = { 0 };

	if (FUNC1(&psmouse->ps2dev, param, FUNC0(0, 2, TP_READ_ID)))
		return -1;

	if (param[0] != TP_MAGIC_IDENT)
		return -1;

	if (firmware_id)
		*firmware_id = param[1];

	return 0;
}