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
struct ps2dev {int dummy; } ;
struct psmouse {struct alps_data* private; struct ps2dev ps2dev; } ;
struct alps_data {int /*<<< orphan*/  addr_command; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 scalar_t__ FUNC1 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, int addr)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	struct alps_data *priv = psmouse->private;
	int i, nibble;

	if (FUNC1(ps2dev, NULL, priv->addr_command))
		return -1;

	for (i = 12; i >= 0; i -= 4) {
		nibble = (addr >> i) & 0xf;
		if (FUNC0(psmouse, nibble))
			return -1;
	}

	return 0;
}