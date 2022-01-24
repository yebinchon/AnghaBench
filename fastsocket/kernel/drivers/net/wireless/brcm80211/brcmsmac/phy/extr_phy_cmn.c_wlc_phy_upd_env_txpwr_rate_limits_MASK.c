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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct brcms_phy {int /*<<< orphan*/ * txpwr_env_limit; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_TXPWR_MAX ; 
 size_t TXP_NUM_RATES ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi, u32 band)
{
	u8 i;
	s8 temp, vbat;

	for (i = 0; i < TXP_NUM_RATES; i++)
		pi->txpwr_env_limit[i] = BRCMS_TXPWR_MAX;

	vbat = FUNC1(pi);
	temp = FUNC0(pi);

}