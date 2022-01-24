#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;
typedef  TYPE_1__ islpci_private ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IW_MODE_AUTO ; 
 scalar_t__ IW_MODE_MONITOR ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *ndev, struct iw_request_info *info,
		 __u32 * uwrq, char *extra)
{
	islpci_private *priv = FUNC1(ndev);

	FUNC0((priv->iw_mode < IW_MODE_AUTO) || (priv->iw_mode >
						  IW_MODE_MONITOR));
	*uwrq = priv->iw_mode;

	return 0;
}