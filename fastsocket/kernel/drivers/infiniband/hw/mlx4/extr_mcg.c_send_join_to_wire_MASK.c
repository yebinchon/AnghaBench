#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mcast_group {int /*<<< orphan*/  timeout_work; TYPE_4__* demux; int /*<<< orphan*/  last_req_tid; } ;
struct TYPE_6__ {int /*<<< orphan*/  interface_id; } ;
struct TYPE_7__ {TYPE_1__ global; } ;
struct ib_sa_mcmember_data {TYPE_2__ port_gid; } ;
struct TYPE_8__ {int /*<<< orphan*/  tid; } ;
struct ib_sa_mad {TYPE_3__ mad_hdr; int /*<<< orphan*/  data; } ;
struct ib_mad {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  mcg_wq; int /*<<< orphan*/ * guid_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAD_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct ib_sa_mad*,struct ib_sa_mad*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,struct ib_mad*) ; 

__attribute__((used)) static int FUNC5(struct mcast_group *group, struct ib_sa_mad *sa_mad)
{
	struct ib_sa_mad mad;
	struct ib_sa_mcmember_data *sa_mad_data = (struct ib_sa_mcmember_data *)&mad.data;
	int ret;

	/* we rely on a mad request as arrived from a VF */
	FUNC0(&mad, sa_mad, sizeof mad);

	/* fix port GID to be the real one (slave 0) */
	sa_mad_data->port_gid.global.interface_id = group->demux->guid_cache[0];

	/* assign our own TID */
	mad.mad_hdr.tid = FUNC1(group->demux);
	group->last_req_tid = mad.mad_hdr.tid; /* keep it for later validation */

	ret = FUNC4(group->demux, (struct ib_mad *)&mad);
	/* set timeout handler */
	if (!ret) {
		/* calls mlx4_ib_mcg_timeout_handler */
		FUNC3(group->demux->mcg_wq, &group->timeout_work,
				FUNC2(MAD_TIMEOUT_MS));
	}

	return ret;
}