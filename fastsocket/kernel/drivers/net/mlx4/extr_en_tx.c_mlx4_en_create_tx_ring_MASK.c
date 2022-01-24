#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {scalar_t__ map; int /*<<< orphan*/  buf; } ;
struct TYPE_15__ {TYPE_1__ direct; } ;
struct TYPE_14__ {TYPE_6__ buf; } ;
struct TYPE_16__ {TYPE_2__* uar; } ;
struct TYPE_13__ {int /*<<< orphan*/  event; } ;
struct mlx4_en_tx_ring {int size; int size_mask; int stride; int qpn; int bf_enabled; int /*<<< orphan*/ * tx_info; int /*<<< orphan*/ * bounce_buf; int /*<<< orphan*/  buf_size; TYPE_5__ wqres; int /*<<< orphan*/  hwtstamp_tx_type; TYPE_8__ bf; TYPE_4__ qp; int /*<<< orphan*/  buf; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  tx_type; } ;
struct mlx4_en_priv {TYPE_3__ hwtstamp_config; struct mlx4_en_dev* mdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  map; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  uar_map; TYPE_2__ priv_uar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_DESC_SIZE ; 
 int /*<<< orphan*/  MAX_INLINE ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  inline_thold ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  mlx4_en_sqp_event ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 

int FUNC14(struct mlx4_en_priv *priv,
			   struct mlx4_en_tx_ring *ring, int qpn, u32 size,
			   u16 stride)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	int tmp;
	int err;

	ring->size = size;
	ring->size_mask = size - 1;
	ring->stride = stride;

	inline_thold = FUNC5(inline_thold, MAX_INLINE);

	tmp = size * sizeof(struct mlx4_en_tx_info);
	ring->tx_info = FUNC13(tmp);
	if (!ring->tx_info) {
		FUNC2(priv, "Failed allocating tx_info ring\n");
		return -ENOMEM;
	}
	FUNC1(DRV, priv, "Allocated tx_info ring at addr:%p size:%d\n",
		 ring->tx_info, tmp);

	ring->bounce_buf = FUNC4(MAX_DESC_SIZE, GFP_KERNEL);
	if (!ring->bounce_buf) {
		FUNC2(priv, "Failed allocating bounce buffer\n");
		err = -ENOMEM;
		goto err_tx;
	}
	ring->buf_size = FUNC0(size * ring->stride, MLX4_EN_PAGE_SIZE);

	err = FUNC6(mdev->dev, &ring->wqres, ring->buf_size,
				 2 * PAGE_SIZE);
	if (err) {
		FUNC2(priv, "Failed allocating hwq resources\n");
		goto err_bounce;
	}

	err = FUNC8(&ring->wqres.buf);
	if (err) {
		FUNC2(priv, "Failed to map TX buffer\n");
		goto err_hwq_res;
	}

	ring->buf = ring->wqres.buf.direct.buf;

	FUNC1(DRV, priv, "Allocated TX ring (addr:%p) - buf:%p size:%d "
	       "buf_size:%d dma:%llx\n", ring, ring->buf, ring->size,
	       ring->buf_size, (unsigned long long) ring->wqres.buf.direct.map);

	ring->qpn = qpn;
	err = FUNC11(mdev->dev, ring->qpn, &ring->qp);
	if (err) {
		FUNC2(priv, "Failed allocating qp %d\n", ring->qpn);
		goto err_map;
	}
	ring->qp.event = mlx4_en_sqp_event;

	err = FUNC7(mdev->dev, &ring->bf);
	if (err) {
		FUNC1(DRV, priv, "working without blueflame (%d)", err);
		ring->bf.uar = &mdev->priv_uar;
		ring->bf.uar->map = mdev->uar_map;
		ring->bf_enabled = false;
	} else
		ring->bf_enabled = true;

	ring->hwtstamp_tx_type = priv->hwtstamp_config.tx_type;

	return 0;

err_map:
	FUNC9(&ring->wqres.buf);
err_hwq_res:
	FUNC10(mdev->dev, &ring->wqres, ring->buf_size);
err_bounce:
	FUNC3(ring->bounce_buf);
	ring->bounce_buf = NULL;
err_tx:
	FUNC12(ring->tx_info);
	ring->tx_info = NULL;
	return err;
}