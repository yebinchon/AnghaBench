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
struct TYPE_3__ {int /*<<< orphan*/  interface_id; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  scalar_t__ u32 ;
struct id_map_entry {int slave_id; int /*<<< orphan*/  sl_cm_id; } ;
struct TYPE_4__ {scalar_t__ attr_id; } ;
struct ib_mad {TYPE_2__ mad_hdr; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CM_DREP_ATTR_ID ; 
 scalar_t__ CM_DREQ_ATTR_ID ; 
 scalar_t__ CM_REJ_ATTR_ID ; 
 scalar_t__ CM_REQ_ATTR_ID ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ib_mad*) ; 
 union ib_gid FUNC1 (struct ib_device*,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int) ; 
 struct id_map_entry* FUNC3 (struct ib_device*,int*,int,int) ; 
 int FUNC4 (struct ib_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,struct id_map_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_mad*,int /*<<< orphan*/ ) ; 

int FUNC9(struct ib_device *ibdev, int port, int *slave,
							     struct ib_mad *mad)
{
	u32 pv_cm_id;
	struct id_map_entry *id;

	if (mad->mad_hdr.attr_id == CM_REQ_ATTR_ID) {
		union ib_gid gid;

		gid = FUNC1(ibdev, mad);
		*slave = FUNC4(ibdev, port, gid.global.interface_id);
		if (*slave < 0) {
			FUNC5(ibdev, "failed matching slave_id by gid (0x%llx)\n",
					gid.global.interface_id);
			return -ENOENT;
		}
		return 0;
	}

	pv_cm_id = FUNC0(mad);
	id = FUNC3(ibdev, (int *)&pv_cm_id, -1, -1);

	if (!id) {
		FUNC6("Couldn't find an entry for pv_cm_id 0x%x\n", pv_cm_id);
		return -ENOENT;
	}

	*slave = id->slave_id;
	FUNC8(mad, id->sl_cm_id);

	if (mad->mad_hdr.attr_id == CM_DREQ_ATTR_ID)
		FUNC7(ibdev, id);
	else if (mad->mad_hdr.attr_id == CM_REJ_ATTR_ID ||
			mad->mad_hdr.attr_id == CM_DREP_ATTR_ID) {
		FUNC2(ibdev, (int) pv_cm_id);
	}

	return 0;
}