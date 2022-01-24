#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {scalar_t__ spy_number; } ;
struct TYPE_10__ {int /*<<< orphan*/  mib_sem; TYPE_2__ spy_data; } ;
typedef  TYPE_3__ islpci_private ;
typedef  enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;

/* Variables and functions */
 int /*<<< orphan*/  INL_CONFIG_RXANNEX ; 
 int OID_INL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*,struct iw_request_info*,union iwreq_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct net_device *ndev,
		struct iw_request_info *info,
		union iwreq_data *uwrq, char *extra)
{
	islpci_private *priv = FUNC5(ndev);
	u32 u;
	enum oid_num_t oid = OID_INL_CONFIG;

	FUNC0(&priv->mib_sem);
	FUNC3(priv, OID_INL_CONFIG, &u);

	if ((uwrq->data.length == 0) && (priv->spy_data.spy_number > 0))
		/* disable spy */
		u &= ~INL_CONFIG_RXANNEX;
	else if ((uwrq->data.length > 0) && (priv->spy_data.spy_number == 0))
		/* enable spy */
		u |= INL_CONFIG_RXANNEX;

	FUNC4(priv, OID_INL_CONFIG, &u);
	FUNC2(priv, &oid, 1);
	FUNC6(&priv->mib_sem);

	return FUNC1(ndev, info, uwrq, extra);
}