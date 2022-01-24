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
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_11__ {int method; int mgmt_class; int /*<<< orphan*/  tid; } ;
struct TYPE_15__ {TYPE_3__ mad_hdr; } ;
struct TYPE_13__ {int /*<<< orphan*/  qkey; int /*<<< orphan*/  remote_qpn; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  av; } ;
struct mlx4_tunnel_mad {TYPE_7__ mad; TYPE_5__ hdr; } ;
struct mlx4_ib_dev {TYPE_6__* dev; } ;
struct mlx4_ib_demux_pv_qp {TYPE_2__* ring; } ;
struct mlx4_ib_demux_pv_ctx {int slave; int /*<<< orphan*/  port; int /*<<< orphan*/  ib_dev; struct mlx4_ib_demux_pv_qp* qp; } ;
struct TYPE_16__ {int /*<<< orphan*/  device; } ;
struct mlx4_ib_ah {TYPE_8__ ibah; int /*<<< orphan*/  av; } ;
struct mlx4_av {int dummy; } ;
struct ib_wc {int wr_id; int src_qp; } ;
struct ib_sa_mad {int dummy; } ;
struct ib_mad {int dummy; } ;
struct TYPE_12__ {int sgid_index; } ;
struct ib_ah_attr {int ah_flags; TYPE_4__ grh; } ;
struct TYPE_9__ {int base_proxy_sqpn; } ;
struct TYPE_14__ {TYPE_1__ phys_caps; } ;
struct TYPE_10__ {int /*<<< orphan*/  map; struct mlx4_tunnel_mad* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int IB_AH_GRH ; 
#define  IB_MGMT_CLASS_CM 137 
#define  IB_MGMT_CLASS_DEVICE_MGMT 136 
#define  IB_MGMT_CLASS_SUBN_ADM 135 
#define  IB_MGMT_METHOD_GET 134 
#define  IB_MGMT_METHOD_REPORT 133 
#define  IB_MGMT_METHOD_SET 132 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
#define  IB_SA_METHOD_DELETE 131 
#define  IB_SA_METHOD_GET_MULTI 130 
#define  IB_SA_METHOD_GET_TABLE 129 
#define  IB_SA_METHOD_GET_TRACE_TBL 128 
 int MLX4_MFUNC_MAX ; 
 int MLX4_NUM_TUNNEL_BUFS ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ib_sa_mad*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_ah_attr*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC11 (TYPE_6__*) ; 
 struct mlx4_ib_dev* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mlx4_ib_demux_pv_ctx *ctx, struct ib_wc *wc)
{
	struct mlx4_ib_dev *dev = FUNC12(ctx->ib_dev);
	struct mlx4_ib_demux_pv_qp *tun_qp = &ctx->qp[FUNC0(wc->wr_id)];
	int wr_ix = wc->wr_id & (MLX4_NUM_TUNNEL_BUFS - 1);
	struct mlx4_tunnel_mad *tunnel = tun_qp->ring[wr_ix].addr;
	struct mlx4_ib_ah ah;
	struct ib_ah_attr ah_attr;
	u8 *slave_id;
	int slave;

	/* Get slave that sent this packet */
	if (wc->src_qp < dev->dev->phys_caps.base_proxy_sqpn ||
	    wc->src_qp >= dev->dev->phys_caps.base_proxy_sqpn + 8 * MLX4_MFUNC_MAX ||
	    (wc->src_qp & 0x1) != ctx->port - 1 ||
	    wc->src_qp & 0x4) {
		FUNC10(ctx->ib_dev, "can't multiplex bad sqp:%d\n", wc->src_qp);
		return;
	}
	slave = ((wc->src_qp & ~0x7) - dev->dev->phys_caps.base_proxy_sqpn) / 8;
	if (slave != ctx->slave) {
		FUNC10(ctx->ib_dev, "can't multiplex bad sqp:%d: "
			     "belongs to another slave\n", wc->src_qp);
		return;
	}
	if (slave != FUNC11(dev->dev) && !(wc->src_qp & 0x2)) {
		FUNC10(ctx->ib_dev, "can't multiplex bad sqp:%d: "
			     "non-master trying to send QP0 packets\n", wc->src_qp);
		return;
	}

	/* Map transaction ID */
	FUNC3(ctx->ib_dev, tun_qp->ring[wr_ix].map,
				   sizeof (struct mlx4_tunnel_mad),
				   DMA_FROM_DEVICE);
	switch (tunnel->mad.mad_hdr.method) {
	case IB_MGMT_METHOD_SET:
	case IB_MGMT_METHOD_GET:
	case IB_MGMT_METHOD_REPORT:
	case IB_SA_METHOD_GET_TABLE:
	case IB_SA_METHOD_DELETE:
	case IB_SA_METHOD_GET_MULTI:
	case IB_SA_METHOD_GET_TRACE_TBL:
		slave_id = (u8 *) &tunnel->mad.mad_hdr.tid;
		if (*slave_id) {
			FUNC10(ctx->ib_dev, "egress mad has non-null tid msb:%d "
				     "class:%d slave:%d\n", *slave_id,
				     tunnel->mad.mad_hdr.mgmt_class, slave);
			return;
		} else
			*slave_id = slave;
	default:
		/* nothing */;
	}

	/* Class-specific handling */
	switch (tunnel->mad.mad_hdr.mgmt_class) {
	case IB_MGMT_CLASS_SUBN_ADM:
		if (FUNC7(ctx->ib_dev, ctx->port, slave,
			      (struct ib_sa_mad *) &tunnel->mad))
			return;
		break;
	case IB_MGMT_CLASS_CM:
		if (FUNC6(ctx->ib_dev, ctx->port, slave,
			      (struct ib_mad *) &tunnel->mad))
			return;
		break;
	case IB_MGMT_CLASS_DEVICE_MGMT:
		if (tunnel->mad.mad_hdr.method != IB_MGMT_METHOD_GET &&
		    tunnel->mad.mad_hdr.method != IB_MGMT_METHOD_SET)
			return;
		break;
	default:
		/* Drop unsupported classes for slaves in tunnel mode */
		if (slave != FUNC11(dev->dev)) {
			FUNC10(ctx->ib_dev, "dropping unsupported egress mad from class:%d "
				     "for slave:%d\n", tunnel->mad.mad_hdr.mgmt_class, slave);
			return;
		}
	}

	/* We are using standard ib_core services to send the mad, so generate a
	 * stadard address handle by decoding the tunnelled mlx4_ah fields */
	FUNC5(&ah.av, &tunnel->hdr.av, sizeof (struct mlx4_av));
	ah.ibah.device = ctx->ib_dev;
	FUNC8(&ah.ibah, &ah_attr);
	if ((ah_attr.ah_flags & IB_AH_GRH) &&
	    (ah_attr.grh.sgid_index != slave)) {
		FUNC10(ctx->ib_dev, "slave:%d accessed invalid sgid_index:%d\n",
			     slave, ah_attr.grh.sgid_index);
		return;
	}

	FUNC9(dev, slave, ctx->port,
			     FUNC4(dev, wc->src_qp, slave) ?
			     IB_QPT_SMI : IB_QPT_GSI,
			     FUNC1(tunnel->hdr.pkey_index),
			     FUNC2(tunnel->hdr.remote_qpn),
			     FUNC2(tunnel->hdr.qkey),
			     &ah_attr, &tunnel->mad);
}