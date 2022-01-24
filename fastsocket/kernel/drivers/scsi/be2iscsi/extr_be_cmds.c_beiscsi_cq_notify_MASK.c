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
typedef  int u32 ;
typedef  int u16 ;
struct beiscsi_hba {scalar_t__ db_va; } ;

/* Variables and functions */
 int DB_CQ_NUM_POPPED_SHIFT ; 
 scalar_t__ DB_CQ_OFFSET ; 
 int DB_CQ_REARM_SHIFT ; 
 int DB_CQ_RING_ID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct beiscsi_hba *phba, u16 qid, bool arm,
		       u16 num_popped)
{
	u32 val = 0;
	val |= qid & DB_CQ_RING_ID_MASK;
	if (arm)
		val |= 1 << DB_CQ_REARM_SHIFT;
	val |= num_popped << DB_CQ_NUM_POPPED_SHIFT;
	FUNC0(val, phba->db_va + DB_CQ_OFFSET);
}