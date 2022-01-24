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
typedef  int nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TIO_ICE_PMI_TX_CFG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(nasid_t nasid, int corelet)
{
	if (!(nasid & 1))
		return;

	FUNC0(nasid, TIO_ICE_PMI_TX_CFG, 1 << corelet);
	FUNC1(2000);
	FUNC0(nasid, TIO_ICE_PMI_TX_CFG, 0);
	FUNC1(2000);
}