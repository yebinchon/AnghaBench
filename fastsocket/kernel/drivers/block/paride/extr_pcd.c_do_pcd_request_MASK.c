#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct pcd_unit {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; TYPE_1__* rq_disk; } ;
struct TYPE_8__ {struct pcd_unit* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  do_pcd_read ; 
 int /*<<< orphan*/  nice ; 
 int /*<<< orphan*/  pcd_buf ; 
 int pcd_bufblk ; 
 int pcd_busy ; 
 int /*<<< orphan*/  pcd_count ; 
 struct pcd_unit* pcd_current ; 
 TYPE_2__* pcd_req ; 
 int /*<<< orphan*/  pcd_sector ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct request_queue * q)
{
	if (pcd_busy)
		return;
	while (1) {
		if (!pcd_req) {
			pcd_req = FUNC1(q);
			if (!pcd_req)
				return;
		}

		if (FUNC5(pcd_req) == READ) {
			struct pcd_unit *cd = pcd_req->rq_disk->private_data;
			if (cd != pcd_current)
				pcd_bufblk = -1;
			pcd_current = cd;
			pcd_sector = FUNC3(pcd_req);
			pcd_count = FUNC2(pcd_req);
			pcd_buf = pcd_req->buffer;
			pcd_busy = 1;
			FUNC4(do_pcd_read, NULL, 0, nice);
			return;
		} else {
			FUNC0(pcd_req, -EIO);
			pcd_req = NULL;
		}
	}
}