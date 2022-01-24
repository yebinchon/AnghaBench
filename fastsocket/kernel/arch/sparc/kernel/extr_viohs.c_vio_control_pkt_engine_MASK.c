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
typedef  int u8 ;
struct vio_msg_tag {int stype_env; } ;
struct vio_driver_state {int hs_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* handshake_complete ) (struct vio_driver_state*) ;} ;

/* Variables and functions */
#define  VIO_ATTR_INFO 132 
#define  VIO_DRING_REG 131 
#define  VIO_DRING_UNREG 130 
 int VIO_HS_COMPLETE ; 
#define  VIO_RDX 129 
#define  VIO_VER_INFO 128 
 int FUNC0 (struct vio_driver_state*,void*) ; 
 int FUNC1 (struct vio_driver_state*,void*) ; 
 int FUNC2 (struct vio_driver_state*,void*) ; 
 int FUNC3 (struct vio_driver_state*,void*) ; 
 int FUNC4 (struct vio_driver_state*,void*) ; 
 int FUNC5 (struct vio_driver_state*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct vio_driver_state*) ; 

int FUNC7(struct vio_driver_state *vio, void *pkt)
{
	struct vio_msg_tag *tag = pkt;
	u8 prev_state = vio->hs_state;
	int err;

	switch (tag->stype_env) {
	case VIO_VER_INFO:
		err = FUNC5(vio, pkt);
		break;

	case VIO_ATTR_INFO:
		err = FUNC0(vio, pkt);
		break;

	case VIO_DRING_REG:
		err = FUNC1(vio, pkt);
		break;

	case VIO_DRING_UNREG:
		err = FUNC2(vio, pkt);
		break;

	case VIO_RDX:
		err = FUNC3(vio, pkt);
		break;

	default:
		err = FUNC4(vio, pkt);
		break;
	}
	if (!err &&
	    vio->hs_state != prev_state &&
	    (vio->hs_state & VIO_HS_COMPLETE))
		vio->ops->handshake_complete(vio);

	return err;
}