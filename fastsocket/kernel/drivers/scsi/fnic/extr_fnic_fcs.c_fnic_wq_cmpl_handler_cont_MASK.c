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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct vnic_dev {int dummy; } ;
struct fnic {int /*<<< orphan*/ * wq_lock; int /*<<< orphan*/ * wq; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fnic_wq_complete_frame_send ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fnic* FUNC2 (struct vnic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cq_desc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vnic_dev *vdev,
				     struct cq_desc *cq_desc, u8 type,
				     u16 q_number, u16 completed_index,
				     void *opaque)
{
	struct fnic *fnic = FUNC2(vdev);
	unsigned long flags;

	FUNC0(&fnic->wq_lock[q_number], flags);
	FUNC3(&fnic->wq[q_number], cq_desc, completed_index,
			fnic_wq_complete_frame_send, NULL);
	FUNC1(&fnic->wq_lock[q_number], flags);

	return 0;
}