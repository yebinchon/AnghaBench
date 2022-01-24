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
struct psmouse {struct fsp_data* private; } ;
struct fsp_data {int vscroll; } ;

/* Variables and functions */
 int EIO ; 
 int FSP_BIT_FIX_VSCR ; 
 int FSP_BIT_ONPAD_ENABLE ; 
 int /*<<< orphan*/  FSP_REG_ONPAD_CTL ; 
 scalar_t__ FUNC0 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct psmouse*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, bool enable)
{
	struct fsp_data *pad = psmouse->private;
	int val;

	if (FUNC0(psmouse, FSP_REG_ONPAD_CTL, &val))
		return -EIO;

	pad->vscroll = enable;

	if (enable)
		val |= (FSP_BIT_FIX_VSCR | FSP_BIT_ONPAD_ENABLE);
	else
		val &= ~FSP_BIT_FIX_VSCR;

	if (FUNC1(psmouse, FSP_REG_ONPAD_CTL, val))
		return -EIO;

	return 0;
}