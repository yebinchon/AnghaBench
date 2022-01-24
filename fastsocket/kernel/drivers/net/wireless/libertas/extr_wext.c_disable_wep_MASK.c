#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ wep_enabled; int /*<<< orphan*/  auth_mode; } ;
struct assoc_request {int /*<<< orphan*/  flags; TYPE_2__* wep_keys; TYPE_1__ secinfo; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_SECINFO ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_KEYS ; 
 int /*<<< orphan*/  IW_AUTH_ALG_OPEN_SYSTEM ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct assoc_request *assoc_req)
{
	int i;

	FUNC0(LBS_DEB_WEXT);

	/* Set Open System auth mode */
	assoc_req->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;

	/* Clear WEP keys and mark WEP as disabled */
	assoc_req->secinfo.wep_enabled = 0;
	for (i = 0; i < 4; i++)
		assoc_req->wep_keys[i].len = 0;

	FUNC2(ASSOC_FLAG_SECINFO, &assoc_req->flags);
	FUNC2(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags);

	FUNC1(LBS_DEB_WEXT);
}