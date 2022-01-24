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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u8 ;
typedef  int u16 ;
struct ib_device {int* gid_tbl_len; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ib_device*) ; 
 int FUNC1 (struct ib_device*,int,int,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid*,union ib_gid*,int) ; 
 int FUNC3 (struct ib_device*) ; 

int FUNC4(struct ib_device *device, union ib_gid *gid,
		u8 *port_num, u16 *index)
{
	union ib_gid tmp_gid;
	int ret, port, i;

	for (port = FUNC3(device); port <= FUNC0(device); ++port) {
		for (i = 0; i < device->gid_tbl_len[port - FUNC3(device)]; ++i) {
			ret = FUNC1(device, port, i, &tmp_gid);
			if (ret)
				return ret;
			if (!FUNC2(&tmp_gid, gid, sizeof *gid)) {
				*port_num = port;
				if (index)
					*index = i;
				return 0;
			}
		}
	}

	return -ENOENT;
}