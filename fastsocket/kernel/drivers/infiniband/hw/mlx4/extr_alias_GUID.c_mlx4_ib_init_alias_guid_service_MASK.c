#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct mlx4_sriov_alias_guid_port_rec_det {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * sa_client; TYPE_5__* ports_guid; int /*<<< orphan*/  ag_work_lock; } ;
struct TYPE_8__ {TYPE_2__ alias_guid; } ;
struct TYPE_9__ {scalar_t__ (* query_gid ) (TYPE_4__*,int,int /*<<< orphan*/ ,union ib_gid*) ;} ;
struct mlx4_ib_dev {int num_ports; TYPE_3__ sriov; TYPE_4__ ib_dev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_10__ {int port; int /*<<< orphan*/ * wq; int /*<<< orphan*/  alias_guid_work; TYPE_2__* parent; int /*<<< orphan*/  cb_list; TYPE_1__* all_rec_per_port; } ;
struct TYPE_6__ {int /*<<< orphan*/ * all_recs; int /*<<< orphan*/  ownership; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GUID_REC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX4_GUID_DRIVER_ASSIGN ; 
 int /*<<< orphan*/  MLX4_GUID_FOR_DELETE_VAL ; 
 int /*<<< orphan*/  MLX4_GUID_NONE_ASSIGN ; 
 int NUM_ALIAS_GUID_IN_REC ; 
 int NUM_ALIAS_GUID_REC_IN_PORT ; 
 int /*<<< orphan*/  alias_guid_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mlx4_ib_sm_guid_assign ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int,int /*<<< orphan*/ ,union ib_gid*) ; 

int FUNC17(struct mlx4_ib_dev *dev)
{
	char alias_wq_name[15];
	int ret = 0;
	int i, j, k;
	union ib_gid gid;

	if (!FUNC11(dev->dev))
		return 0;
	dev->sriov.alias_guid.sa_client =
		FUNC9(sizeof *dev->sriov.alias_guid.sa_client, GFP_KERNEL);
	if (!dev->sriov.alias_guid.sa_client)
		return -ENOMEM;

	FUNC5(dev->sriov.alias_guid.sa_client);

	FUNC15(&dev->sriov.alias_guid.ag_work_lock);

	for (i = 1; i <= dev->num_ports; ++i) {
		if (dev->ib_dev.query_gid(&dev->ib_dev , i, 0, &gid)) {
			ret = -EFAULT;
			goto err_unregister;
		}
	}

	for (i = 0 ; i < dev->num_ports; i++) {
		FUNC10(&dev->sriov.alias_guid.ports_guid[i], 0,
		       sizeof (struct mlx4_sriov_alias_guid_port_rec_det));
		/*Check if the SM doesn't need to assign the GUIDs*/
		for (j = 0; j < NUM_ALIAS_GUID_REC_IN_PORT; j++) {
			if (mlx4_ib_sm_guid_assign) {
				dev->sriov.alias_guid.ports_guid[i].
					all_rec_per_port[j].
					ownership = MLX4_GUID_DRIVER_ASSIGN;
				continue;
			}
			dev->sriov.alias_guid.ports_guid[i].all_rec_per_port[j].
					ownership = MLX4_GUID_NONE_ASSIGN;
			/*mark each val as it was deleted,
			  till the sysAdmin will give it valid val*/
			for (k = 0; k < NUM_ALIAS_GUID_IN_REC; k++) {
				*(__be64 *)&dev->sriov.alias_guid.ports_guid[i].
					all_rec_per_port[j].all_recs[GUID_REC_SIZE * k] =
						FUNC2(MLX4_GUID_FOR_DELETE_VAL);
			}
		}
		FUNC1(&dev->sriov.alias_guid.ports_guid[i].cb_list);
		/*prepare the records, set them to be allocated by sm*/
		for (j = 0 ; j < NUM_ALIAS_GUID_REC_IN_PORT; j++)
			FUNC7(dev, i + 1, j);

		dev->sriov.alias_guid.ports_guid[i].parent = &dev->sriov.alias_guid;
		dev->sriov.alias_guid.ports_guid[i].port  = i;
		if (mlx4_ib_sm_guid_assign)
			FUNC13(dev, i);

		FUNC14(alias_wq_name, sizeof alias_wq_name, "alias_guid%d", i);
		dev->sriov.alias_guid.ports_guid[i].wq =
			FUNC3(alias_wq_name);
		if (!dev->sriov.alias_guid.ports_guid[i].wq) {
			ret = -ENOMEM;
			goto err_thread;
		}
		FUNC0(&dev->sriov.alias_guid.ports_guid[i].alias_guid_work,
			  alias_guid_work);
	}
	return 0;

err_thread:
	for (--i; i >= 0; i--) {
		FUNC4(dev->sriov.alias_guid.ports_guid[i].wq);
		dev->sriov.alias_guid.ports_guid[i].wq = NULL;
	}

err_unregister:
	FUNC6(dev->sriov.alias_guid.sa_client);
	FUNC8(dev->sriov.alias_guid.sa_client);
	dev->sriov.alias_guid.sa_client = NULL;
	FUNC12("init_alias_guid_service: Failed. (ret:%d)\n", ret);
	return ret;
}