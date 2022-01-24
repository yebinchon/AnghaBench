#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int verifier_state_t ;
typedef  int uint32_t ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int HALCYON_HEADER1 ; 
 int HALCYON_HEADER1MASK ; 
 int HALCYON_HEADER2 ; 
 int VIA_VIDEOMASK ; 
 int VIA_VIDEO_HEADER5 ; 
 int VIA_VIDEO_HEADER6 ; 
#define  state_command 133 
#define  state_error 132 
#define  state_header1 131 
#define  state_header2 130 
#define  state_vheader5 129 
#define  state_vheader6 128 
 int FUNC1 (int /*<<< orphan*/ *,int const**,int const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int const**,int const*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const**,int const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int const**,int const*) ; 

int
FUNC5(struct drm_device *dev, const uint32_t *buf,
			 unsigned int size)
{

	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
	uint32_t cmd;
	const uint32_t *buf_end = buf + (size >> 2);
	verifier_state_t state = state_command;
	int fire_count = 0;

	while (buf < buf_end) {

		switch (state) {
		case state_header2:
			state =
			    FUNC2(dev_priv, &buf, buf_end,
					      &fire_count);
			break;
		case state_header1:
			state = FUNC1(dev_priv, &buf, buf_end);
			break;
		case state_vheader5:
			state = FUNC3(dev_priv, &buf, buf_end);
			break;
		case state_vheader6:
			state = FUNC4(dev_priv, &buf, buf_end);
			break;
		case state_command:
			if (HALCYON_HEADER2 == (cmd = *buf))
				state = state_header2;
			else if ((cmd & HALCYON_HEADER1MASK) == HALCYON_HEADER1)
				state = state_header1;
			else if ((cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER5)
				state = state_vheader5;
			else if ((cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER6)
				state = state_vheader6;
			else {
				FUNC0
				    ("Invalid / Unimplemented DMA HEADER command. 0x%x\n",
				     cmd);
				state = state_error;
			}
			break;
		case state_error:
		default:
			return -EINVAL;
		}
	}
	if (state == state_error)
		return -EINVAL;
	return 0;
}