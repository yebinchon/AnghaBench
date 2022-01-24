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
struct net_device {int /*<<< orphan*/  name; } ;
struct concap_proto {struct net_device* net_dev; } ;
typedef  int /*<<< orphan*/  isdn_net_local ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct concap_proto *concap)
{
	struct net_device *ndev = concap -> net_dev;
	isdn_net_local *lp = (isdn_net_local *) FUNC2(ndev);
	int ret;
	FUNC0( "isdn_concap_dl_connect_req: %s \n", ndev -> name);

	/* dial ... */
	ret = FUNC1( lp );
	if ( ret ) FUNC0("dialing failed\n");
	return ret;
}