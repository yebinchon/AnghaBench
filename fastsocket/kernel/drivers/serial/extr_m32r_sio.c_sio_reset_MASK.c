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

/* Variables and functions */
 int /*<<< orphan*/  BAUD_RATE ; 
 int /*<<< orphan*/  M32R_SIO0_CR_PORTL ; 
 int /*<<< orphan*/  M32R_SIO0_MOD0_PORTL ; 
 int /*<<< orphan*/  M32R_SIO0_MOD1_PORTL ; 
 int /*<<< orphan*/  M32R_SIO0_TRCR_PORTL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(0x00000300, M32R_SIO0_CR_PORTL);	/* init status */
	FUNC0(0x00000800, M32R_SIO0_MOD1_PORTL);	/* 8bit        */
	FUNC0(0x00000080, M32R_SIO0_MOD0_PORTL);	/* 1stop non   */
	FUNC1(BAUD_RATE);
	FUNC0(0x00000000, M32R_SIO0_TRCR_PORTL);
	FUNC0(0x00000003, M32R_SIO0_CR_PORTL);	/* RXCEN */
}