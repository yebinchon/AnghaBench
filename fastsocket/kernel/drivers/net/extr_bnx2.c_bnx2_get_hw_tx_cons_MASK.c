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
typedef  int u16 ;
struct bnx2_napi {int* hw_tx_cons_ptr; } ;

/* Variables and functions */
 int BNX2_MAX_TX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline u16
FUNC2(struct bnx2_napi *bnapi)
{
	u16 cons;

	/* Tell compiler that status block fields can change. */
	FUNC0();
	cons = *bnapi->hw_tx_cons_ptr;
	FUNC0();
	if (FUNC1((cons & BNX2_MAX_TX_DESC_CNT) == BNX2_MAX_TX_DESC_CNT))
		cons++;
	return cons;
}