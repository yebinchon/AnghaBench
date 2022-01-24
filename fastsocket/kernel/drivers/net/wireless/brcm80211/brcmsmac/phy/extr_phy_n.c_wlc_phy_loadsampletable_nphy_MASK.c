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
typedef  unsigned int u32 ;
typedef  int u16 ;
struct cordic_iq {scalar_t__ q; scalar_t__ i; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NPHY_TBL_ID_SAMPLEPLAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 unsigned int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static void
FUNC4(struct brcms_phy *pi, struct cordic_iq *tone_buf,
			     u16 num_samps)
{
	u16 t;
	u32 *data_buf = NULL;

	data_buf = FUNC1(sizeof(u32) * num_samps, GFP_ATOMIC);
	if (data_buf == NULL)
		return;

	if (pi->phyhang_avoid)
		FUNC2(pi, true);

	for (t = 0; t < num_samps; t++)
		data_buf[t] = ((((unsigned int)tone_buf[t].i) & 0x3ff) << 10) |
			      (((unsigned int)tone_buf[t].q) & 0x3ff);
	FUNC3(pi, NPHY_TBL_ID_SAMPLEPLAY, num_samps, 0, 32,
				 data_buf);

	FUNC0(data_buf);

	if (pi->phyhang_avoid)
		FUNC2(pi, false);
}