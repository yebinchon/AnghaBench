#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int track_flush; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_12__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
#define  RADEON_3D_LOAD_VBPNTR 135 
#define  RADEON_CNTL_BITBLT_MULTI 134 
#define  RADEON_CP_3D_DRAW_IMMD_2 133 
#define  RADEON_CP_3D_DRAW_INDX_2 132 
#define  RADEON_CP_3D_DRAW_VBUF_2 131 
#define  RADEON_CP_INDX_BUFFER 130 
#define  RADEON_CP_NOP 129 
 int RADEON_FLUSH_EMITED ; 
 int RADEON_PURGE_EMITED ; 
#define  RADEON_WAIT_FOR_IDLE 128 
 int /*<<< orphan*/  RING_LOCALS ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static __inline__ int FUNC9(drm_radeon_private_t *dev_priv,
					    drm_radeon_kcmd_buffer_t *cmdbuf)
{
	u32 *header;
	int count;
	RING_LOCALS;

	if (4 > FUNC5(cmdbuf->buffer))
		return -EINVAL;

	/* Fixme !! This simply emits a packet without much checking.
	   We need to be smarter. */

	/* obtain first word - actual packet3 header */
	header = FUNC4(cmdbuf->buffer, 0);

	/* Is it packet 3 ? */
	if ((*header >> 30) != 0x3) {
		FUNC2("Not a packet3 header (0x%08x)\n", *header);
		return -EINVAL;
	}

	count = (*header >> 16) & 0x3fff;

	/* Check again now that we know how much data to expect */
	if ((count + 2) * 4 > FUNC5(cmdbuf->buffer)) {
		FUNC2
		    ("Expected packet3 of length %d but have only %d bytes left\n",
		     (count + 2) * 4, FUNC5(cmdbuf->buffer));
		return -EINVAL;
	}

	/* Is it a packet type we know about ? */
	switch (*header & 0xff00) {
	case RADEON_3D_LOAD_VBPNTR:	/* load vertex array pointers */
		return FUNC6(dev_priv, cmdbuf, *header);

	case RADEON_CNTL_BITBLT_MULTI:
		return FUNC7(dev_priv, cmdbuf);

	case RADEON_CP_INDX_BUFFER:
		FUNC2("packet3 INDX_BUFFER without preceding 3D_DRAW_INDX_2 is illegal.\n");
		return -EINVAL;
	case RADEON_CP_3D_DRAW_IMMD_2:
		/* triggers drawing using in-packet vertex data */
	case RADEON_CP_3D_DRAW_VBUF_2:
		/* triggers drawing of vertex buffers setup elsewhere */
		dev_priv->track_flush &= ~(RADEON_FLUSH_EMITED |
					   RADEON_PURGE_EMITED);
		break;
	case RADEON_CP_3D_DRAW_INDX_2:
		/* triggers drawing using indices to vertex buffer */
		/* whenever we send vertex we clear flush & purge */
		dev_priv->track_flush &= ~(RADEON_FLUSH_EMITED |
					   RADEON_PURGE_EMITED);
		return FUNC8(dev_priv, cmdbuf);
	case RADEON_WAIT_FOR_IDLE:
	case RADEON_CP_NOP:
		/* these packets are safe */
		break;
	default:
		FUNC2("Unknown packet3 header (0x%08x)\n", *header);
		return -EINVAL;
	}

	FUNC1(count + 2);
	FUNC3(cmdbuf->buffer, count + 2);
	FUNC0();

	return 0;
}