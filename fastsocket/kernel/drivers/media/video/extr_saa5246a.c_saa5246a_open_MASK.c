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
struct saa5246a_device {int /*<<< orphan*/  in_use; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_END ; 
 int EBUSY ; 
 int EIO ; 
 int R0_DO_NOT_FORCE_nODD_EVEN_LOW_IF_PICTURE_DISPLAYED ; 
 int R0_ENABLE_HDR_POLL ; 
 int R0_ENABLE_nODD_EVEN_OUTPUT ; 
 int R0_NO_AUTOMATIC_FASTEXT_PROMPT ; 
 int R0_NO_FREE_RUN_PLL ; 
 int R0_PLL_TIME_CONSTANT_LONG ; 
 int R0_SELECT_R11 ; 
 int R1_8_BITS_NO_PARITY ; 
 int R1_DAUS_ALL_ON ; 
 int R1_DEW ; 
 int R1_EXTENDED_PACKET_DISABLE ; 
 int R1_NON_INTERLACED_312_312_LINES ; 
 int R1_VCS_TO_SCS ; 
 int /*<<< orphan*/  R4_DISPLAY_PAGE_4 ; 
 int /*<<< orphan*/  SAA5246A_REGISTER_R0 ; 
 int /*<<< orphan*/  SAA5246A_REGISTER_R4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct saa5246a_device*,int /*<<< orphan*/ ,int,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct saa5246a_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file)
{
	struct saa5246a_device *t = FUNC3(file);

	if (FUNC2(0, &t->in_use))
		return -EBUSY;

	if (FUNC1(t, SAA5246A_REGISTER_R0,
		R0_SELECT_R11 |
		R0_PLL_TIME_CONSTANT_LONG |
		R0_ENABLE_nODD_EVEN_OUTPUT |
		R0_ENABLE_HDR_POLL |
		R0_DO_NOT_FORCE_nODD_EVEN_LOW_IF_PICTURE_DISPLAYED |
		R0_NO_FREE_RUN_PLL |
		R0_NO_AUTOMATIC_FASTEXT_PROMPT,

		R1_NON_INTERLACED_312_312_LINES |
		R1_DEW |
		R1_EXTENDED_PACKET_DISABLE |
		R1_DAUS_ALL_ON |
		R1_8_BITS_NO_PARITY |
		R1_VCS_TO_SCS,

		COMMAND_END) ||
		FUNC1(t, SAA5246A_REGISTER_R4,

		/* We do not care much for the TV display but nevertheless we
		 * need the currently displayed page later because only on that
		 * page the time is updated. */
		R4_DISPLAY_PAGE_4,

		COMMAND_END))
	{
		FUNC0(0, &t->in_use);
		return -EIO;
	}
	return 0;
}