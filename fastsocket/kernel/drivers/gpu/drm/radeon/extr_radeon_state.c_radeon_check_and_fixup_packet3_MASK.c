#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  microcode_version; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
#define  RADEON_3D_CLEAR_HIZ 143 
#define  RADEON_3D_CLEAR_ZMASK 142 
#define  RADEON_3D_DRAW_IMMD 141 
#define  RADEON_3D_DRAW_INDX 140 
#define  RADEON_3D_DRAW_VBUF 139 
#define  RADEON_3D_LOAD_VBPNTR 138 
#define  RADEON_3D_RNDR_GEN_INDX_PRIM 137 
#define  RADEON_CNTL_BITBLT_MULTI 136 
#define  RADEON_CNTL_HOSTDATA_BLT 135 
#define  RADEON_CNTL_PAINT_MULTI 134 
#define  RADEON_CP_3D_DRAW_IMMD_2 133 
#define  RADEON_CP_3D_DRAW_INDX_2 132 
#define  RADEON_CP_3D_DRAW_VBUF_2 131 
#define  RADEON_CP_INDX_BUFFER 130 
#define  RADEON_CP_NOP 129 
 int RADEON_CP_PACKET3 ; 
 int RADEON_CP_PACKET_COUNT_MASK ; 
 int RADEON_GMC_DST_PITCH_OFFSET_CNTL ; 
 int RADEON_GMC_SRC_PITCH_OFFSET_CNTL ; 
#define  RADEON_WAIT_FOR_IDLE 128 
 int /*<<< orphan*/  UCODE_R100 ; 
 int /*<<< orphan*/  UCODE_R200 ; 
 int* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct drm_file*,int*) ; 

__attribute__((used)) static int FUNC4(drm_radeon_private_t *
					  dev_priv,
					  struct drm_file *file_priv,
					  drm_radeon_kcmd_buffer_t *
					  cmdbuf,
					  unsigned int *cmdsz)
{
	u32 *cmd = FUNC1(cmdbuf->buffer, 0);
	u32 offset, narrays;
	int count, i, k;

	count = ((*cmd & RADEON_CP_PACKET_COUNT_MASK) >> 16);
	*cmdsz = 2 + count;

	if ((*cmd & 0xc0000000) != RADEON_CP_PACKET3) {
		FUNC0("Not a type 3 packet\n");
		return -EINVAL;
	}

	if (4 * *cmdsz > FUNC2(cmdbuf->buffer)) {
		FUNC0("Packet size larger than size of data provided\n");
		return -EINVAL;
	}

	switch (*cmd & 0xff00) {
	/* XXX Are there old drivers needing other packets? */

	case RADEON_3D_DRAW_IMMD:
	case RADEON_3D_DRAW_VBUF:
	case RADEON_3D_DRAW_INDX:
	case RADEON_WAIT_FOR_IDLE:
	case RADEON_CP_NOP:
	case RADEON_3D_CLEAR_ZMASK:
/*	case RADEON_CP_NEXT_CHAR:
	case RADEON_CP_PLY_NEXTSCAN:
	case RADEON_CP_SET_SCISSORS: */ /* probably safe but will never need them? */
		/* these packets are safe */
		break;

	case RADEON_CP_3D_DRAW_IMMD_2:
	case RADEON_CP_3D_DRAW_VBUF_2:
	case RADEON_CP_3D_DRAW_INDX_2:
	case RADEON_3D_CLEAR_HIZ:
		/* safe but r200 only */
		if (dev_priv->microcode_version != UCODE_R200) {
			FUNC0("Invalid 3d packet for r100-class chip\n");
			return -EINVAL;
		}
		break;

	case RADEON_3D_LOAD_VBPNTR:

		if (count > 18) { /* 12 arrays max */
			FUNC0("Too large payload in 3D_LOAD_VBPNTR (count=%d)\n",
				  count);
			return -EINVAL;
		}

		/* carefully check packet contents */
		cmd = FUNC1(cmdbuf->buffer, 1);

		narrays = *cmd & ~0xc000;
		k = 0;
		i = 2;
		while ((k < narrays) && (i < (count + 2))) {
			i++;		/* skip attribute field */
			cmd = FUNC1(cmdbuf->buffer, i);
			if (FUNC3(dev_priv, file_priv,
							  cmd)) {
				FUNC0
				    ("Invalid offset (k=%d i=%d) in 3D_LOAD_VBPNTR packet.\n",
				     k, i);
				return -EINVAL;
			}
			k++;
			i++;
			if (k == narrays)
				break;
			/* have one more to process, they come in pairs */
			cmd = FUNC1(cmdbuf->buffer, i);

			if (FUNC3(dev_priv,
							  file_priv, cmd))
			{
				FUNC0
				    ("Invalid offset (k=%d i=%d) in 3D_LOAD_VBPNTR packet.\n",
				     k, i);
				return -EINVAL;
			}
			k++;
			i++;
		}
		/* do the counts match what we expect ? */
		if ((k != narrays) || (i != (count + 2))) {
			FUNC0
			    ("Malformed 3D_LOAD_VBPNTR packet (k=%d i=%d narrays=%d count+1=%d).\n",
			      k, i, narrays, count + 1);
			return -EINVAL;
		}
		break;

	case RADEON_3D_RNDR_GEN_INDX_PRIM:
		if (dev_priv->microcode_version != UCODE_R100) {
			FUNC0("Invalid 3d packet for r200-class chip\n");
			return -EINVAL;
		}

		cmd = FUNC1(cmdbuf->buffer, 1);
		if (FUNC3(dev_priv, file_priv, cmd)) {
				FUNC0("Invalid rndr_gen_indx offset\n");
				return -EINVAL;
		}
		break;

	case RADEON_CP_INDX_BUFFER:
		if (dev_priv->microcode_version != UCODE_R200) {
			FUNC0("Invalid 3d packet for r100-class chip\n");
			return -EINVAL;
		}

		cmd = FUNC1(cmdbuf->buffer, 1);
		if ((*cmd & 0x8000ffff) != 0x80000810) {
			FUNC0("Invalid indx_buffer reg address %08X\n", *cmd);
			return -EINVAL;
		}
		cmd = FUNC1(cmdbuf->buffer, 2);
		if (FUNC3(dev_priv, file_priv, cmd)) {
			FUNC0("Invalid indx_buffer offset is %08X\n", *cmd);
			return -EINVAL;
		}
		break;

	case RADEON_CNTL_HOSTDATA_BLT:
	case RADEON_CNTL_PAINT_MULTI:
	case RADEON_CNTL_BITBLT_MULTI:
		/* MSB of opcode: next DWORD GUI_CNTL */
		cmd = FUNC1(cmdbuf->buffer, 1);
		if (*cmd & (RADEON_GMC_SRC_PITCH_OFFSET_CNTL
			      | RADEON_GMC_DST_PITCH_OFFSET_CNTL)) {
			u32 *cmd2 = FUNC1(cmdbuf->buffer, 2);
			offset = *cmd2 << 10;
			if (FUNC3
			    (dev_priv, file_priv, &offset)) {
				FUNC0("Invalid first packet offset\n");
				return -EINVAL;
			}
			*cmd2 = (*cmd2 & 0xffc00000) | offset >> 10;
		}

		if ((*cmd & RADEON_GMC_SRC_PITCH_OFFSET_CNTL) &&
		    (*cmd & RADEON_GMC_DST_PITCH_OFFSET_CNTL)) {
			u32 *cmd3 = FUNC1(cmdbuf->buffer, 3);
			offset = *cmd3 << 10;
			if (FUNC3
			    (dev_priv, file_priv, &offset)) {
				FUNC0("Invalid second packet offset\n");
				return -EINVAL;
			}
			*cmd3 = (*cmd3 & 0xffc00000) | offset >> 10;
		}
		break;

	default:
		FUNC0("Invalid packet type %x\n", *cmd & 0xff00);
		return -EINVAL;
	}

	return 0;
}