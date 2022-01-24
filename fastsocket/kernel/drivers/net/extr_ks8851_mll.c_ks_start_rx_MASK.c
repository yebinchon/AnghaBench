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
typedef  int /*<<< orphan*/  u16 ;
struct ks_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_RXCR1 ; 
 int /*<<< orphan*/  RXCR1_RXE ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ks_net *ks)
{
	u16 cntl;

	/* Enables QMU Receive (RXCR1). */
	cntl = FUNC0(ks, KS_RXCR1);
	cntl |= RXCR1_RXE ;
	FUNC1(ks, KS_RXCR1, cntl);
}