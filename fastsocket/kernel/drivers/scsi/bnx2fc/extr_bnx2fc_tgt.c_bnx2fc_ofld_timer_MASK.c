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
struct bnx2fc_rport {int /*<<< orphan*/  ofld_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_ENABLED ; 
 int /*<<< orphan*/  BNX2FC_FLAG_OFFLOADED ; 
 int /*<<< orphan*/  BNX2FC_FLAG_OFLD_REQ_CMPL ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_rport*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{

	struct bnx2fc_rport *tgt = (struct bnx2fc_rport *)data;

	FUNC0(tgt, "entered bnx2fc_ofld_timer\n");
	/* NOTE: This function should never be called, as
	 * offload should never timeout
	 */
	/*
	 * If the timer has expired, this session is dead
	 * Clear offloaded flag and logout of this device.
	 * Since OFFLOADED flag is cleared, this case
	 * will be considered as offload error and the
	 * port will be logged off, and conn_id, session
	 * resources are freed up in bnx2fc_offload_session
	 */
	FUNC1(BNX2FC_FLAG_OFFLOADED, &tgt->flags);
	FUNC1(BNX2FC_FLAG_ENABLED, &tgt->flags);
	FUNC2(BNX2FC_FLAG_OFLD_REQ_CMPL, &tgt->flags);
	FUNC3(&tgt->ofld_wait);
}