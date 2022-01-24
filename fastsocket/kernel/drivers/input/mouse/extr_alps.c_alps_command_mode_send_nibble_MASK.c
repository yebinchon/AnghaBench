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
struct ps2dev {int dummy; } ;
struct psmouse {struct alps_data* private; struct ps2dev ps2dev; } ;
struct alps_data {TYPE_1__* nibble_commands; } ;
struct TYPE_2__ {int command; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ps2dev*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, int nibble)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	struct alps_data *priv = psmouse->private;
	int command;
	unsigned char *param;
	unsigned char dummy[4];

	FUNC0(nibble > 0xf);

	command = priv->nibble_commands[nibble].command;
	param = (command & 0x0f00) ?
		dummy : (unsigned char *)&priv->nibble_commands[nibble].data;

	if (FUNC1(ps2dev, param, command))
		return -1;

	return 0;
}