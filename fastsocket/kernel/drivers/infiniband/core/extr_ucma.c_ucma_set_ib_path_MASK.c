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
struct ucma_context {int /*<<< orphan*/  cm_id; } ;
struct rdma_cm_event {int /*<<< orphan*/  event; } ;
struct ib_sa_path_rec {int dummy; } ;
struct ib_path_rec_data {int flags; int /*<<< orphan*/  path_rec; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_PATH_BIDIRECTIONAL ; 
 int IB_PATH_GMP ; 
 int IB_PATH_PRIMARY ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ib_sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ib_sa_path_rec*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC4(struct ucma_context *ctx,
			    struct ib_path_rec_data *path_data, size_t optlen)
{
	struct ib_sa_path_rec sa_path;
	struct rdma_cm_event event;
	int ret;

	if (optlen % sizeof(*path_data))
		return -EINVAL;

	for (; optlen; optlen -= sizeof(*path_data), path_data++) {
		if (path_data->flags == (IB_PATH_GMP | IB_PATH_PRIMARY |
					 IB_PATH_BIDIRECTIONAL))
			break;
	}

	if (!optlen)
		return -EINVAL;

	FUNC0(path_data->path_rec, &sa_path);
	ret = FUNC2(ctx->cm_id, &sa_path, 1);
	if (ret)
		return ret;

	FUNC1(&event, 0, sizeof event);
	event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
	return FUNC3(ctx->cm_id, &event);
}