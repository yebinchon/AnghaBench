#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sbp2_reconnect_orb {int dummy; } ;
struct sbp2_query_logins_response {int dummy; } ;
struct sbp2_query_logins_orb {int dummy; } ;
struct sbp2_lu {scalar_t__ status_fifo_addr; TYPE_2__* ud; int /*<<< orphan*/  query_logins_response_dma; scalar_t__ query_logins_response; int /*<<< orphan*/  query_logins_orb_dma; scalar_t__ query_logins_orb; int /*<<< orphan*/  logout_orb_dma; scalar_t__ logout_orb; int /*<<< orphan*/  reconnect_orb_dma; scalar_t__ reconnect_orb; int /*<<< orphan*/  login_orb_dma; scalar_t__ login_orb; int /*<<< orphan*/  login_response_dma; scalar_t__ login_response; int /*<<< orphan*/  lu_list; scalar_t__ shost; struct sbp2_fwhost_info* hi; } ;
struct sbp2_logout_orb {int dummy; } ;
struct sbp2_login_response {int dummy; } ;
struct sbp2_login_orb {int dummy; } ;
struct sbp2_fwhost_info {TYPE_4__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_3__* driver; TYPE_1__ device; } ;
struct TYPE_8__ {int /*<<< orphan*/  owner; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CSR1212_INVALID_ADDR_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbp2_hi_logical_units_lock ; 
 int /*<<< orphan*/  sbp2_highlevel ; 
 int /*<<< orphan*/  FUNC7 (struct sbp2_lu*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct sbp2_lu *lu)
{
	struct sbp2_fwhost_info *hi;
	unsigned long flags;

	if (!lu)
		return;
	hi = lu->hi;
	if (!hi)
		goto no_hi;

	if (lu->shost) {
		FUNC9(lu->shost);
		FUNC8(lu->shost);
	}
	FUNC2();
	FUNC7(lu, hi->host);

	FUNC10(&sbp2_hi_logical_units_lock, flags);
	FUNC5(&lu->lu_list);
	FUNC11(&sbp2_hi_logical_units_lock, flags);

	if (lu->login_response)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_login_response),
				    lu->login_response,
				    lu->login_response_dma);
	if (lu->login_orb)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_login_orb),
				    lu->login_orb,
				    lu->login_orb_dma);
	if (lu->reconnect_orb)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_reconnect_orb),
				    lu->reconnect_orb,
				    lu->reconnect_orb_dma);
	if (lu->logout_orb)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_logout_orb),
				    lu->logout_orb,
				    lu->logout_orb_dma);
	if (lu->query_logins_orb)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_query_logins_orb),
				    lu->query_logins_orb,
				    lu->query_logins_orb_dma);
	if (lu->query_logins_response)
		FUNC1(hi->host->device.parent,
				    sizeof(struct sbp2_query_logins_response),
				    lu->query_logins_response,
				    lu->query_logins_response_dma);

	if (lu->status_fifo_addr != CSR1212_INVALID_ADDR_SPACE)
		FUNC3(&sbp2_highlevel, hi->host,
					  lu->status_fifo_addr);

	FUNC0(&lu->ud->device, NULL);

	FUNC6(hi->host->driver->owner);
no_hi:
	FUNC4(lu);
}