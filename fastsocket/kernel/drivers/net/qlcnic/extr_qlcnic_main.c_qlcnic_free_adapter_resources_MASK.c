#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {TYPE_3__* ahw; int /*<<< orphan*/ * recv_ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tmpl_hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buff; } ;
struct TYPE_6__ {TYPE_2__ fw_dump; TYPE_1__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *adapter)
{
	FUNC0(adapter->recv_ctx);
	adapter->recv_ctx = NULL;

	if (adapter->ahw->fw_dump.tmpl_hdr) {
		FUNC1(adapter->ahw->fw_dump.tmpl_hdr);
		adapter->ahw->fw_dump.tmpl_hdr = NULL;
	}

	FUNC0(adapter->ahw->reset.buff);
	adapter->ahw->fw_dump.tmpl_hdr = NULL;
}