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
struct virtio_scsi_vq {int /*<<< orphan*/  vq; int /*<<< orphan*/  vq_lock; } ;
struct virtio_scsi_target_state {int /*<<< orphan*/  tgt_lock; int /*<<< orphan*/  sg; } ;
struct virtio_scsi_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,struct virtio_scsi_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_scsi_target_state*,struct virtio_scsi_cmd*,unsigned int*,unsigned int*,size_t,size_t) ; 

__attribute__((used)) static int FUNC8(struct virtio_scsi_target_state *tgt,
			     struct virtio_scsi_vq *vq,
			     struct virtio_scsi_cmd *cmd,
			     size_t req_size, size_t resp_size)
{
	unsigned int out_num, in_num;
	unsigned long flags;
	int ret;

	FUNC1(&tgt->tgt_lock, flags);
	FUNC7(tgt, cmd, &out_num, &in_num, req_size, resp_size);

	FUNC0(&vq->vq_lock);
	ret = FUNC4(vq->vq, tgt->sg, out_num, in_num, cmd);
	FUNC2(&tgt->tgt_lock);
	if (ret >= 0)
		ret = FUNC5(vq->vq);

	FUNC3(&vq->vq_lock, flags);

	if (ret > 0)
		FUNC6(vq->vq);
	return ret;
}