#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mlx4_en_tx_ring {int buf_size; scalar_t__ buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  indir_qp; } ;
struct mlx4_en_priv {int port_up; size_t* ethtool_rules; int rx_ring_num; size_t port; int tx_ring_num; int num_tx_rings_p_up; int flags; TYPE_5__* rx_ring; struct mlx4_en_cq* rx_cq; struct mlx4_en_cq* tx_cq; struct mlx4_en_tx_ring* tx_ring; int /*<<< orphan*/  stats_bitmap; int /*<<< orphan*/  rx_mode_task; int /*<<< orphan*/  broadcast_id; TYPE_1__ rss_map; int /*<<< orphan*/  base_qpn; TYPE_4__* prof; scalar_t__ rx_skb_size; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  ethtool_list; int /*<<< orphan*/  curr_list; int /*<<< orphan*/  mc_list; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  workqueue; scalar_t__* mac_removed; } ;
struct TYPE_8__ {int /*<<< orphan*/  cqn; } ;
struct mlx4_en_cq {int size; TYPE_3__ mcq; TYPE_2__* buf; } ;
struct ethtool_flow_id {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_9__ {int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_ppp; int /*<<< orphan*/  tx_pause; } ;
struct TYPE_7__ {int /*<<< orphan*/  wqe_index; int /*<<< orphan*/  owner_sr_opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_NUM_OF_FS_RULES ; 
 int /*<<< orphan*/  MLX4_CQE_OWNER_MASK ; 
 int MLX4_EN_FLAG_MC_PROMISC ; 
 int MLX4_EN_FLAG_PROMISC ; 
 int /*<<< orphan*/  MLX4_PROT_ETH ; 
 scalar_t__ STAMP_STRIDE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlx4_en_priv*,struct mlx4_en_cq*,int) ; 
 int FUNC10 (struct mlx4_en_priv*) ; 
 int FUNC11 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (struct mlx4_en_priv*) ; 
 int FUNC15 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_en_priv*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_en_priv*) ; 
 int FUNC20 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_en_priv*) ; 
 int FUNC23 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_en_dev*,char*) ; 
 struct mlx4_en_priv* FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC31(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC27(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_cq *cq;
	struct mlx4_en_tx_ring *tx_ring;
	int rx_index = 0;
	int tx_index = 0;
	int err = 0;
	int i;
	int j;
	u8 mc_list[16] = {0};

	if (priv->port_up) {
		FUNC2(DRV, priv, "start port called while port already up\n");
		return 0;
	}

	FUNC0(&priv->mc_list);
	FUNC0(&priv->curr_list);
	FUNC0(&priv->ethtool_list);
	FUNC4(&priv->ethtool_rules[0], 0,
	       sizeof(struct ethtool_flow_id) * MAX_NUM_OF_FS_RULES);

	/* Calculate Rx buf size */
	dev->mtu = FUNC5(dev->mtu, priv->max_mtu);
	FUNC13(dev);
	FUNC2(DRV, priv, "Rx buf size:%d\n", priv->rx_skb_size);

	/* Configure rx cq's and rings */
	err = FUNC10(priv);
	if (err) {
		FUNC3(priv, "Failed to activate RX rings\n");
		return err;
	}
	for (i = 0; i < priv->rx_ring_num; i++) {
		cq = &priv->rx_cq[i];

		err = FUNC9(priv, cq, i);
		if (err) {
			FUNC3(priv, "Failed activating Rx CQ\n");
			goto cq_err;
		}
		for (j = 0; j < cq->size; j++)
			cq->buf[j].owner_sr_opcode = MLX4_CQE_OWNER_MASK;
		err = FUNC23(priv, cq);
		if (err) {
			FUNC3(priv, "Failed setting cq moderation parameters");
			FUNC16(priv, cq);
			goto cq_err;
		}
		FUNC12(priv, cq);
		priv->rx_ring[i].cqn = cq->mcq.cqn;
		++rx_index;
	}

	/* Set qp number */
	FUNC2(DRV, priv, "Getting qp number for port %d\n", priv->port);
	err = FUNC20(priv);
	if (err) {
		FUNC3(priv, "Failed getting eth qp\n");
		goto cq_err;
	}
	mdev->mac_removed[priv->port] = 0;

	err = FUNC14(priv);
	if (err) {
		FUNC3(priv, "Failed configuring rss steering\n");
		goto mac_err;
	}

	err = FUNC15(priv);
	if (err)
		goto rss_err;

	/* Configure tx cq's and rings */
	for (i = 0; i < priv->tx_ring_num; i++) {
		/* Configure cq */
		cq = &priv->tx_cq[i];
		err = FUNC9(priv, cq, i);
		if (err) {
			FUNC3(priv, "Failed allocating Tx CQ\n");
			goto tx_err;
		}
		err = FUNC23(priv, cq);
		if (err) {
			FUNC3(priv, "Failed setting cq moderation parameters");
			FUNC16(priv, cq);
			goto tx_err;
		}
		FUNC2(DRV, priv, "Resetting index of collapsed CQ:%d to -1\n", i);
		cq->buf->wqe_index = FUNC1(0xffff);

		/* Configure ring */
		tx_ring = &priv->tx_ring[i];
		err = FUNC11(priv, tx_ring, cq->mcq.cqn,
			i / priv->num_tx_rings_p_up);
		if (err) {
			FUNC3(priv, "Failed allocating Tx ring\n");
			FUNC16(priv, cq);
			goto tx_err;
		}

		/* Arm CQ for TX completions */
		FUNC12(priv, cq);

		/* Set initial ownership of all Tx TXBBs to SW (1) */
		for (j = 0; j < tx_ring->buf_size; j += STAMP_STRIDE)
			*((u32 *) (tx_ring->buf + j)) = 0xffffffff;
		++tx_index;
	}

	/* Configure port */
	err = FUNC7(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    priv->prof->tx_pause,
				    priv->prof->tx_ppp,
				    priv->prof->rx_pause,
				    priv->prof->rx_ppp);
	if (err) {
		FUNC3(priv, "Failed setting port general configurations for port %d, with error %d\n",
		       priv->port, err);
		goto tx_err;
	}
	/* Set default qp number */
	err = FUNC8(mdev->dev, priv->port, priv->base_qpn, 0);
	if (err) {
		FUNC3(priv, "Failed setting default qp numbers\n");
		goto tx_err;
	}

	/* Init port */
	FUNC2(HW, priv, "Initializing port\n");
	err = FUNC6(mdev->dev, priv->port);
	if (err) {
		FUNC3(priv, "Failed Initializing port\n");
		goto tx_err;
	}

	/* Attach rx QP to bradcast address */
	FUNC4(&mc_list[10], 0xff, ETH_ALEN);
	mc_list[5] = priv->port; /* needed for B0 steering support */
	if (FUNC24(mdev->dev, &priv->rss_map.indir_qp, mc_list,
				  priv->port, 0, MLX4_PROT_ETH,
				  &priv->broadcast_id))
		FUNC26(mdev, "Failed Attaching Broadcast\n");

	/* Must redo promiscuous mode setup. */
	priv->flags &= ~(MLX4_EN_FLAG_PROMISC | MLX4_EN_FLAG_MC_PROMISC);

	/* Schedule multicast task to populate multicast list */
	FUNC30(mdev->workqueue, &priv->rx_mode_task);

	FUNC25(mdev->dev, &priv->stats_bitmap);

	priv->port_up = true;
	FUNC29(dev);
	FUNC28(dev);

	return 0;

tx_err:
	while (tx_index--) {
		FUNC18(priv, &priv->tx_ring[tx_index]);
		FUNC16(priv, &priv->tx_cq[tx_index]);
	}
	FUNC19(priv);
rss_err:
	FUNC22(priv);
mac_err:
	FUNC21(priv);
cq_err:
	while (rx_index--)
		FUNC16(priv, &priv->rx_cq[rx_index]);
	for (i = 0; i < priv->rx_ring_num; i++)
		FUNC17(priv, &priv->rx_ring[i]);

	return err; /* need to close devices */
}