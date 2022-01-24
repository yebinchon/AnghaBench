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
struct qeth_card {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_CMD_SETVMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC1 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_l2_send_setmac_cb ; 

__attribute__((used)) static int FUNC2(struct qeth_card *card, __u8 *mac)
{
	FUNC0(TRACE, 2, "L2Setmac");
	return FUNC1(card, mac, IPA_CMD_SETVMAC,
					  qeth_l2_send_setmac_cb);
}