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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct TYPE_4__ {TYPE_1__ dgid; } ;
struct ipoib_path {int query_id; int /*<<< orphan*/  done; int /*<<< orphan*/ * query; TYPE_2__ pathrec; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IB_SA_PATH_REC_DGID ; 
 int IB_SA_PATH_REC_NUMB_PATH ; 
 int IB_SA_PATH_REC_PKEY ; 
 int IB_SA_PATH_REC_SGID ; 
 int IB_SA_PATH_REC_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipoib_path*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipoib_sa_client ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  path_rec_completion ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			  struct ipoib_path *path)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);

	FUNC3(priv, "Start path record lookup for %pI6\n",
		  path->pathrec.dgid.raw);

	FUNC2(&path->done);

	path->query_id =
		FUNC1(&ipoib_sa_client, priv->ca, priv->port,
				   &path->pathrec,
				   IB_SA_PATH_REC_DGID		|
				   IB_SA_PATH_REC_SGID		|
				   IB_SA_PATH_REC_NUMB_PATH	|
				   IB_SA_PATH_REC_TRAFFIC_CLASS |
				   IB_SA_PATH_REC_PKEY,
				   1000, GFP_ATOMIC,
				   path_rec_completion,
				   path, &path->query);
	if (path->query_id < 0) {
		FUNC4(priv, "ib_sa_path_rec_get failed: %d\n", path->query_id);
		path->query = NULL;
		FUNC0(&path->done);
		return path->query_id;
	}

	return 0;
}