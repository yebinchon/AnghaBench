#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_priv {int /*<<< orphan*/  pgdir_mutex; } ;
struct mlx4_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {TYPE_3__* pgdir; } ;
struct mlx4_db {int order; int index; TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  db_dma; int /*<<< orphan*/  db_page; int /*<<< orphan*/  order1; int /*<<< orphan*/ * bits; int /*<<< orphan*/  order0; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MLX4_DB_PER_PAGE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

void FUNC10(struct mlx4_dev *dev, struct mlx4_db *db)
{
	struct mlx4_priv *priv = FUNC5(dev);
	int o;
	int i;

	FUNC6(&priv->pgdir_mutex);

	o = db->order;
	i = db->index;

	if (db->order == 0 && FUNC9(i ^ 1, db->u.pgdir->order0)) {
		FUNC1(i ^ 1, db->u.pgdir->order0);
		++o;
	}
	i >>= o;
	FUNC8(i, db->u.pgdir->bits[o]);

	if (FUNC0(db->u.pgdir->order1, MLX4_DB_PER_PAGE / 2)) {
		FUNC2(&(dev->pdev->dev), PAGE_SIZE,
				  db->u.pgdir->db_page, db->u.pgdir->db_dma);
		FUNC4(&db->u.pgdir->list);
		FUNC3(db->u.pgdir);
	}

	FUNC7(&priv->pgdir_mutex);
}