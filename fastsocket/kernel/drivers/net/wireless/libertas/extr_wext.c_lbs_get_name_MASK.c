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
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct iw_request_info *info,
			 char *cwrq, char *extra)
{

	FUNC0(LBS_DEB_WEXT);

	/* We could add support for 802.11n here as needed. Jean II */
	FUNC2(cwrq, IFNAMSIZ, "IEEE 802.11b/g");

	FUNC1(LBS_DEB_WEXT);
	return 0;
}