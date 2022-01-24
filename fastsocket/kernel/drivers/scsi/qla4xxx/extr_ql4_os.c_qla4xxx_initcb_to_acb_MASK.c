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
struct addr_ctrl_blk_def {int /*<<< orphan*/  reserved15; int /*<<< orphan*/  reserved14; int /*<<< orphan*/  reserved13; int /*<<< orphan*/  reserved12; int /*<<< orphan*/  reserved11; int /*<<< orphan*/  reserved10; int /*<<< orphan*/  reserved9; int /*<<< orphan*/  reserved8; int /*<<< orphan*/  reserved7; int /*<<< orphan*/  reserved6; int /*<<< orphan*/  reserved5; int /*<<< orphan*/  reserved4; int /*<<< orphan*/  reserved3; int /*<<< orphan*/  reserved2; int /*<<< orphan*/  reserved1; } ;
struct addr_ctrl_blk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct addr_ctrl_blk *init_fw_cb)
{
	struct addr_ctrl_blk_def *acb;
	acb = (struct addr_ctrl_blk_def *)init_fw_cb;
	FUNC0(acb->reserved1, 0, sizeof(acb->reserved1));
	FUNC0(acb->reserved2, 0, sizeof(acb->reserved2));
	FUNC0(acb->reserved3, 0, sizeof(acb->reserved3));
	FUNC0(acb->reserved4, 0, sizeof(acb->reserved4));
	FUNC0(acb->reserved5, 0, sizeof(acb->reserved5));
	FUNC0(acb->reserved6, 0, sizeof(acb->reserved6));
	FUNC0(acb->reserved7, 0, sizeof(acb->reserved7));
	FUNC0(acb->reserved8, 0, sizeof(acb->reserved8));
	FUNC0(acb->reserved9, 0, sizeof(acb->reserved9));
	FUNC0(acb->reserved10, 0, sizeof(acb->reserved10));
	FUNC0(acb->reserved11, 0, sizeof(acb->reserved11));
	FUNC0(acb->reserved12, 0, sizeof(acb->reserved12));
	FUNC0(acb->reserved13, 0, sizeof(acb->reserved13));
	FUNC0(acb->reserved14, 0, sizeof(acb->reserved14));
	FUNC0(acb->reserved15, 0, sizeof(acb->reserved15));
}