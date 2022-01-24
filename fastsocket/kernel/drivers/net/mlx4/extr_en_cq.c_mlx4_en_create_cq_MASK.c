#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_3__* dev; } ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct TYPE_12__ {TYPE_2__ direct; } ;
struct TYPE_11__ {TYPE_5__ buf; } ;
struct mlx4_en_cq {int size; int buf_size; int ring; int is_tx; TYPE_4__ wqres; struct mlx4_cqe* buf; int /*<<< orphan*/  lock; } ;
struct mlx4_cqe {int dummy; } ;
typedef  enum cq_type { ____Placeholder_cq_type } cq_type ;
struct TYPE_8__ {int cqe_size; } ;
struct TYPE_10__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (TYPE_3__*,TYPE_4__*,int,int) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx4_en_priv *priv,
		      struct mlx4_en_cq *cq,
		      int entries, int ring, enum cq_type mode)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	cq->size = entries;
	cq->buf_size = cq->size * mdev->dev->caps.cqe_size;

	cq->ring = ring;
	cq->is_tx = mode;
	FUNC3(&cq->lock);

	err = FUNC0(mdev->dev, &cq->wqres,
				cq->buf_size, 2 * PAGE_SIZE);
	if (err)
		return err;

	err = FUNC1(&cq->wqres.buf);
	if (err)
		FUNC2(mdev->dev, &cq->wqres, cq->buf_size);
	else
		cq->buf = (struct mlx4_cqe *) cq->wqres.buf.direct.buf;

	return err;
}