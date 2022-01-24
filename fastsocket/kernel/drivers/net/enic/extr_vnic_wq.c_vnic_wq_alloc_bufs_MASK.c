#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vnic_wq_buf {unsigned int index; struct vnic_wq_buf* next; int /*<<< orphan*/ * desc; } ;
struct TYPE_2__ {unsigned int desc_count; int desc_size; scalar_t__ descs; } ;
struct vnic_wq {struct vnic_wq_buf** bufs; struct vnic_wq_buf* to_clean; struct vnic_wq_buf* to_use; TYPE_1__ ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct vnic_wq_buf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vnic_wq *wq)
{
	struct vnic_wq_buf *buf;
	struct vnic_dev *vdev;
	unsigned int i, j, count = wq->ring.desc_count;
	unsigned int blks = FUNC0(count);

	vdev = wq->vdev;

	for (i = 0; i < blks; i++) {
		wq->bufs[i] = FUNC3(FUNC2(count), GFP_ATOMIC);
		if (!wq->bufs[i])
			return -ENOMEM;
	}

	for (i = 0; i < blks; i++) {
		buf = wq->bufs[i];
		for (j = 0; j < FUNC1(count); j++) {
			buf->index = i * FUNC1(count) + j;
			buf->desc = (u8 *)wq->ring.descs +
				wq->ring.desc_size * buf->index;
			if (buf->index + 1 == count) {
				buf->next = wq->bufs[0];
				break;
			} else if (j + 1 == FUNC1(count)) {
				buf->next = wq->bufs[i + 1];
			} else {
				buf->next = buf + 1;
				buf++;
			}
		}
	}

	wq->to_use = wq->to_clean = wq->bufs[0];

	return 0;
}