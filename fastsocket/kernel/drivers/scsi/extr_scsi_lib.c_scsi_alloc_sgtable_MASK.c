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
struct scsi_data_buffer {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCSI_MAX_SG_SEGMENTS ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_sg_alloc ; 
 int /*<<< orphan*/  scsi_sg_free ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct scsi_data_buffer *sdb, int nents,
			      gfp_t gfp_mask)
{
	int ret;

	FUNC0(!nents);

	ret = FUNC1(&sdb->table, nents, SCSI_MAX_SG_SEGMENTS,
			       gfp_mask, scsi_sg_alloc);
	if (FUNC3(ret))
		FUNC2(&sdb->table, SCSI_MAX_SG_SEGMENTS,
				scsi_sg_free);

	return ret;
}