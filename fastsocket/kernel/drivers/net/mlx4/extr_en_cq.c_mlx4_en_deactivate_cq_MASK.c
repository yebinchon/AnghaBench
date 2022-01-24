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
struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct mlx4_en_cq {int /*<<< orphan*/  mcq; int /*<<< orphan*/  napi; int /*<<< orphan*/  is_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
	if (!cq->is_tx) {
		FUNC1(&cq->napi);
		FUNC2(&cq->napi);
	}

	FUNC0(priv->mdev->dev, &cq->mcq);
}