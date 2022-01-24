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
struct enc_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ WPA2enabled; scalar_t__ WPAenabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct assoc_request {int /*<<< orphan*/  flags; TYPE_1__ secinfo; TYPE_2__ wpa_unicast_key; TYPE_2__ wpa_mcast_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_SECINFO ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_MCAST_KEY ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_UCAST_KEY ; 
 int /*<<< orphan*/  KEY_INFO_WPA_MCAST ; 
 int /*<<< orphan*/  KEY_INFO_WPA_UNICAST ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct assoc_request *assoc_req)
{
	FUNC0(LBS_DEB_WEXT);

	FUNC2(&assoc_req->wpa_mcast_key, 0, sizeof (struct enc_key));
	assoc_req->wpa_mcast_key.flags = KEY_INFO_WPA_MCAST;
	FUNC3(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags);

	FUNC2(&assoc_req->wpa_unicast_key, 0, sizeof (struct enc_key));
	assoc_req->wpa_unicast_key.flags = KEY_INFO_WPA_UNICAST;
	FUNC3(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags);

	assoc_req->secinfo.WPAenabled = 0;
	assoc_req->secinfo.WPA2enabled = 0;
	FUNC3(ASSOC_FLAG_SECINFO, &assoc_req->flags);

	FUNC1(LBS_DEB_WEXT);
}