#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct drm_file {int dummy; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_7__ {scalar_t__ packet_id; } ;
struct TYPE_9__ {TYPE_1__ packet; } ;
typedef  TYPE_3__ drm_radeon_cmd_header_t ;
struct TYPE_10__ {int len; int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int RADEON_MAX_STATE_PACKETS ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* packet ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct drm_file*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(drm_radeon_private_t * dev_priv,
			       struct drm_file *file_priv,
			       drm_radeon_cmd_header_t header,
			       drm_radeon_kcmd_buffer_t *cmdbuf)
{
	int id = (int)header.packet.packet_id;
	int sz, reg;
	RING_LOCALS;

	if (id >= RADEON_MAX_STATE_PACKETS)
		return -EINVAL;

	sz = packet[id].len;
	reg = packet[id].start;

	if (sz * sizeof(u32) > FUNC6(cmdbuf->buffer)) {
		FUNC3("Packet size provided larger than data provided\n");
		return -EINVAL;
	}

	if (FUNC7(dev_priv, file_priv, id,
				cmdbuf->buffer)) {
		FUNC3("Packet verification failed\n");
		return -EINVAL;
	}

	FUNC1(sz + 1);
	FUNC4(FUNC2(reg, (sz - 1)));
	FUNC5(cmdbuf->buffer, sz);
	FUNC0();

	return 0;
}