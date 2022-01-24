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
struct sbp2_reconnect_orb {int dummy; } ;
struct sbp2_query_logins_response {int dummy; } ;
struct sbp2_query_logins_orb {int dummy; } ;
struct sbp2_lu {int workarounds; TYPE_3__* ud; int /*<<< orphan*/  shost; void* login_orb; int /*<<< orphan*/  login_orb_dma; void* logout_orb; int /*<<< orphan*/  logout_orb_dma; void* reconnect_orb; int /*<<< orphan*/  reconnect_orb_dma; void* query_logins_response; int /*<<< orphan*/  query_logins_response_dma; void* query_logins_orb; int /*<<< orphan*/  query_logins_orb_dma; void* login_response; int /*<<< orphan*/  login_response_dma; struct sbp2_fwhost_info* hi; } ;
struct sbp2_logout_orb {int dummy; } ;
struct sbp2_login_response {int dummy; } ;
struct sbp2_login_orb {int dummy; } ;
struct sbp2_fwhost_info {TYPE_2__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ device; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SBP2_INQUIRY_DELAY ; 
 int SBP2_WORKAROUND_DELAY_INQUIRY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp2_lu*,int) ; 
 scalar_t__ FUNC4 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbp2_lu*) ; 
 scalar_t__ FUNC9 (struct sbp2_lu*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sbp2_lu *lu)
{
	struct sbp2_fwhost_info *hi = lu->hi;
	int error;

	lu->login_response = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_login_response),
				     &lu->login_response_dma, GFP_KERNEL);
	if (!lu->login_response)
		goto alloc_fail;

	lu->query_logins_orb = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_query_logins_orb),
				     &lu->query_logins_orb_dma, GFP_KERNEL);
	if (!lu->query_logins_orb)
		goto alloc_fail;

	lu->query_logins_response = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_query_logins_response),
				     &lu->query_logins_response_dma, GFP_KERNEL);
	if (!lu->query_logins_response)
		goto alloc_fail;

	lu->reconnect_orb = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_reconnect_orb),
				     &lu->reconnect_orb_dma, GFP_KERNEL);
	if (!lu->reconnect_orb)
		goto alloc_fail;

	lu->logout_orb = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_logout_orb),
				     &lu->logout_orb_dma, GFP_KERNEL);
	if (!lu->logout_orb)
		goto alloc_fail;

	lu->login_orb = FUNC1(hi->host->device.parent,
				     sizeof(struct sbp2_login_orb),
				     &lu->login_orb_dma, GFP_KERNEL);
	if (!lu->login_orb)
		goto alloc_fail;

	if (FUNC9(lu))
		goto alloc_fail;

	/* Wait a second before trying to log in. Previously logged in
	 * initiators need a chance to reconnect. */
	if (FUNC2(1000)) {
		FUNC7(lu);
		return -EINTR;
	}

	if (FUNC4(lu)) {
		FUNC7(lu);
		return -EBUSY;
	}

	FUNC8(lu);
	FUNC3(lu, 1);
	FUNC6(lu);

	if (lu->workarounds & SBP2_WORKAROUND_DELAY_INQUIRY)
		FUNC11(SBP2_INQUIRY_DELAY);

	error = FUNC10(lu->shost, 0, lu->ud->id, 0);
	if (error) {
		FUNC0("scsi_add_device failed");
		FUNC5(lu);
		FUNC7(lu);
		return error;
	}

	return 0;

alloc_fail:
	FUNC0("Could not allocate memory for lu");
	FUNC7(lu);
	return -ENOMEM;
}