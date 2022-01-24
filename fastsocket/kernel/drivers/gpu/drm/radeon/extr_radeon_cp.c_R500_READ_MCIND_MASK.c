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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  R520_MC_IND_DATA ; 
 int /*<<< orphan*/  R520_MC_IND_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC2(drm_radeon_private_t *dev_priv, int addr)
{
	u32 ret;
	FUNC1(R520_MC_IND_INDEX, 0x7f0000 | (addr & 0xff));
	ret = FUNC0(R520_MC_IND_DATA);
	FUNC1(R520_MC_IND_INDEX, 0);
	return ret;
}