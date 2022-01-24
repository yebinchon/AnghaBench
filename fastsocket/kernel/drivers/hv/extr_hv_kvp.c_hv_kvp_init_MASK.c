#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hv_util_service {int /*<<< orphan*/  recv_buffer; } ;
struct TYPE_2__ {int active; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvp_cn_callback ; 
 int /*<<< orphan*/  kvp_id ; 
 int /*<<< orphan*/  kvp_name ; 
 TYPE_1__ kvp_transaction ; 
 int /*<<< orphan*/  recv_buffer ; 

int
FUNC1(struct hv_util_service *srv)
{
	int err;

	err = FUNC0(&kvp_id, kvp_name, kvp_cn_callback);
	if (err)
		return err;
	recv_buffer = srv->recv_buffer;

	/*
	 * When this driver loads, the user level daemon that
	 * processes the host requests may not yet be running.
	 * Defer processing channel callbacks until the daemon
	 * has registered.
	 */
	kvp_transaction.active = true;

	return 0;
}