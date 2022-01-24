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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {int dummy; } ;
struct mce {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ F10_NBSL_EXT_ERR_ECC ; 
 scalar_t__ NBSL_PP_OBS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,struct mce*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,struct mce*) ; 

__attribute__((used)) static inline void FUNC5(struct mem_ctl_info *mci,
					    struct mce *m)
{
	u16 ec = FUNC0(m->status);
	u8 xec = FUNC2(m->status, 0x1f);
	u8 ecc_type = (m->status >> 45) & 0x3;

	/* Bail early out if this was an 'observed' error */
	if (FUNC1(ec) == NBSL_PP_OBS)
		return;

	/* Do only ECC errors */
	if (xec && xec != F10_NBSL_EXT_ERR_ECC)
		return;

	if (ecc_type == 2)
		FUNC3(mci, m);
	else if (ecc_type == 1)
		FUNC4(mci, m);
}