#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int const* buf_start; scalar_t__ agp; scalar_t__ multitex; TYPE_1__* dev; } ;
typedef  TYPE_2__ drm_via_state_t ;
struct TYPE_7__ {scalar_t__ num_fire_offsets; int const** fire_offsets; } ;
typedef  TYPE_3__ drm_via_private_t ;
struct TYPE_5__ {scalar_t__ dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int const HALCYON_FIRECMD ; 
 int const HALCYON_FIREMASK ; 
 int const HALCYON_HEADER2 ; 
 int const HC_ACMD_HCmdA ; 
 int const HC_ACMD_HCmdB ; 
 int const HC_ACMD_MASK ; 
 int HC_HE3Fire_MASK ; 
 int HC_HPLEND_MASK ; 
 int HC_HPMValidN_MASK ; 
 scalar_t__ VIA_FIRE_BUF_SIZE ; 
 int FUNC1 (int const**,int const*,int) ; 

__attribute__((used)) static __inline__ int
FUNC2(uint32_t const **buffer, const uint32_t * buf_end,
		    drm_via_state_t *cur_seq)
{
	drm_via_private_t *dev_priv =
	    (drm_via_private_t *) cur_seq->dev->dev_private;
	uint32_t a_fire, bcmd, dw_count;
	int ret = 0;
	int have_fire;
	const uint32_t *buf = *buffer;

	while (buf < buf_end) {
		have_fire = 0;
		if ((buf_end - buf) < 2) {
			FUNC0
			    ("Unexpected termination of primitive list.\n");
			ret = 1;
			break;
		}
		if ((*buf & HC_ACMD_MASK) != HC_ACMD_HCmdB)
			break;
		bcmd = *buf++;
		if ((*buf & HC_ACMD_MASK) != HC_ACMD_HCmdA) {
			FUNC0("Expected Vertex List A command, got 0x%x\n",
				  *buf);
			ret = 1;
			break;
		}
		a_fire =
		    *buf++ | HC_HPLEND_MASK | HC_HPMValidN_MASK |
		    HC_HE3Fire_MASK;

		/*
		 * How many dwords per vertex ?
		 */

		if (cur_seq->agp && ((bcmd & (0xF << 11)) == 0)) {
			FUNC0("Illegal B command vertex data for AGP.\n");
			ret = 1;
			break;
		}

		dw_count = 0;
		if (bcmd & (1 << 7))
			dw_count += (cur_seq->multitex) ? 2 : 1;
		if (bcmd & (1 << 8))
			dw_count += (cur_seq->multitex) ? 2 : 1;
		if (bcmd & (1 << 9))
			dw_count++;
		if (bcmd & (1 << 10))
			dw_count++;
		if (bcmd & (1 << 11))
			dw_count++;
		if (bcmd & (1 << 12))
			dw_count++;
		if (bcmd & (1 << 13))
			dw_count++;
		if (bcmd & (1 << 14))
			dw_count++;

		while (buf < buf_end) {
			if (*buf == a_fire) {
				if (dev_priv->num_fire_offsets >=
				    VIA_FIRE_BUF_SIZE) {
					FUNC0("Fire offset buffer full.\n");
					ret = 1;
					break;
				}
				dev_priv->fire_offsets[dev_priv->
						       num_fire_offsets++] =
				    buf;
				have_fire = 1;
				buf++;
				if (buf < buf_end && *buf == a_fire)
					buf++;
				break;
			}
			if ((*buf == HALCYON_HEADER2) ||
			    ((*buf & HALCYON_FIREMASK) == HALCYON_FIRECMD)) {
				FUNC0("Missing Vertex Fire command, "
					  "Stray Vertex Fire command  or verifier "
					  "lost sync.\n");
				ret = 1;
				break;
			}
			if ((ret = FUNC1(&buf, buf_end, dw_count)))
				break;
		}
		if (buf >= buf_end && !have_fire) {
			FUNC0("Missing Vertex Fire command or verifier "
				  "lost sync.\n");
			ret = 1;
			break;
		}
		if (cur_seq->agp && ((buf - cur_seq->buf_start) & 0x01)) {
			FUNC0("AGP Primitive list end misaligned.\n");
			ret = 1;
			break;
		}
	}
	*buffer = buf;
	return ret;
}