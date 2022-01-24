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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct iwl_trans *trans,
					     u16 txq_id)
{
	/* Simply stop the queue, but don't change any configuration;
	 * the SCD_ACT_EN bit is the write-enable mask for the ACTIVE bit. */
	FUNC1(trans,
		FUNC0(txq_id),
		(0 << SCD_QUEUE_STTS_REG_POS_ACTIVE)|
		(1 << SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN));
}