#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vio_dring_state {int prod; } ;
struct vio_disk_vtoc {int dummy; } ;
struct vio_disk_geom {int dummy; } ;
struct vio_disk_devid {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; int /*<<< orphan*/  ack; } ;
struct vio_disk_desc {int operation; int size; int ncookies; TYPE_1__ hdr; scalar_t__ offset; int /*<<< orphan*/  status; scalar_t__ slice; int /*<<< orphan*/  req_id; int /*<<< orphan*/  cookies; } ;
struct vio_completion {int err; int /*<<< orphan*/  com; int /*<<< orphan*/  waiting_for; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct vio_completion* cmp; int /*<<< orphan*/  lp; struct vio_dring_state* drings; } ;
struct vdc_port {int operations; TYPE_2__ vio; int /*<<< orphan*/  req_id; int /*<<< orphan*/  ring_cookies; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int LDC_MAP_DIRECT ; 
 unsigned int LDC_MAP_IO ; 
 unsigned int LDC_MAP_R ; 
 unsigned int LDC_MAP_RW ; 
 unsigned int LDC_MAP_SHADOW ; 
 unsigned int LDC_MAP_W ; 
 int VDC_TX_RING_SIZE ; 
#define  VD_OP_BREAD 140 
#define  VD_OP_BWRITE 139 
#define  VD_OP_FLUSH 138 
#define  VD_OP_GET_DEVID 137 
#define  VD_OP_GET_DISKGEOM 136 
#define  VD_OP_GET_EFI 135 
#define  VD_OP_GET_VTOC 134 
#define  VD_OP_GET_WCE 133 
#define  VD_OP_SCSICMD 132 
#define  VD_OP_SET_DISKGEOM 131 
#define  VD_OP_SET_EFI 130 
#define  VD_OP_SET_VTOC 129 
#define  VD_OP_SET_WCE 128 
 int /*<<< orphan*/  VIO_ACK_ENABLE ; 
 int /*<<< orphan*/  VIO_DESC_READY ; 
 size_t VIO_DRIVER_TX_RING ; 
 int /*<<< orphan*/  WAITING_FOR_GEN_CMD ; 
 int FUNC0 (struct vdc_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vio_disk_desc* FUNC8 (struct vio_dring_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct vdc_port *port, u8 op, void *buf, int len)
{
	struct vio_dring_state *dr;
	struct vio_completion comp;
	struct vio_disk_desc *desc;
	unsigned int map_perm;
	unsigned long flags;
	int op_len, err;
	void *req_buf;

	if (!(((u64)1 << ((u64)op - 1)) & port->operations))
		return -EOPNOTSUPP;

	switch (op) {
	case VD_OP_BREAD:
	case VD_OP_BWRITE:
	default:
		return -EINVAL;

	case VD_OP_FLUSH:
		op_len = 0;
		map_perm = 0;
		break;

	case VD_OP_GET_WCE:
		op_len = sizeof(u32);
		map_perm = LDC_MAP_W;
		break;

	case VD_OP_SET_WCE:
		op_len = sizeof(u32);
		map_perm = LDC_MAP_R;
		break;

	case VD_OP_GET_VTOC:
		op_len = sizeof(struct vio_disk_vtoc);
		map_perm = LDC_MAP_W;
		break;

	case VD_OP_SET_VTOC:
		op_len = sizeof(struct vio_disk_vtoc);
		map_perm = LDC_MAP_R;
		break;

	case VD_OP_GET_DISKGEOM:
		op_len = sizeof(struct vio_disk_geom);
		map_perm = LDC_MAP_W;
		break;

	case VD_OP_SET_DISKGEOM:
		op_len = sizeof(struct vio_disk_geom);
		map_perm = LDC_MAP_R;
		break;

	case VD_OP_SCSICMD:
		op_len = 16;
		map_perm = LDC_MAP_RW;
		break;

	case VD_OP_GET_DEVID:
		op_len = sizeof(struct vio_disk_devid);
		map_perm = LDC_MAP_W;
		break;

	case VD_OP_GET_EFI:
	case VD_OP_SET_EFI:
		return -EOPNOTSUPP;
		break;
	};

	map_perm |= LDC_MAP_SHADOW | LDC_MAP_DIRECT | LDC_MAP_IO;

	op_len = (op_len + 7) & ~7;
	req_buf = FUNC3(op_len, GFP_KERNEL);
	if (!req_buf)
		return -ENOMEM;

	if (len > op_len)
		len = op_len;

	if (map_perm & LDC_MAP_R)
		FUNC5(req_buf, buf, len);

	FUNC6(&port->vio.lock, flags);

	dr = &port->vio.drings[VIO_DRIVER_TX_RING];

	/* XXX If we want to use this code generically we have to
	 * XXX handle TX ring exhaustion etc.
	 */
	desc = FUNC8(dr);

	err = FUNC4(port->vio.lp, req_buf, op_len,
			     desc->cookies, port->ring_cookies,
			     map_perm);
	if (err < 0) {
		FUNC7(&port->vio.lock, flags);
		FUNC2(req_buf);
		return err;
	}

	FUNC1(&comp.com);
	comp.waiting_for = WAITING_FOR_GEN_CMD;
	port->vio.cmp = &comp;

	desc->hdr.ack = VIO_ACK_ENABLE;
	desc->req_id = port->req_id;
	desc->operation = op;
	desc->slice = 0;
	desc->status = ~0;
	desc->offset = 0;
	desc->size = op_len;
	desc->ncookies = err;

	/* This has to be a non-SMP write barrier because we are writing
	 * to memory which is shared with the peer LDOM.
	 */
	FUNC10();
	desc->hdr.state = VIO_DESC_READY;

	err = FUNC0(port);
	if (err >= 0) {
		port->req_id++;
		dr->prod = (dr->prod + 1) & (VDC_TX_RING_SIZE - 1);
		FUNC7(&port->vio.lock, flags);

		FUNC9(&comp.com);
		err = comp.err;
	} else {
		port->vio.cmp = NULL;
		FUNC7(&port->vio.lock, flags);
	}

	if (map_perm & LDC_MAP_W)
		FUNC5(buf, req_buf, len);

	FUNC2(req_buf);

	return err;
}