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
struct iw_point {int /*<<< orphan*/  length; } ;
struct TYPE_3__ {int /*<<< orphan*/  mib_sem; int /*<<< orphan*/  nickname; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, struct iw_request_info *info,
		 struct iw_point *dwrq, char *extra)
{
	islpci_private *priv = FUNC2(ndev);

	dwrq->length = 0;

	FUNC0(&priv->mib_sem);
	dwrq->length = FUNC3(priv->nickname);
	FUNC1(extra, priv->nickname, dwrq->length);
	FUNC4(&priv->mib_sem);

	return 0;
}