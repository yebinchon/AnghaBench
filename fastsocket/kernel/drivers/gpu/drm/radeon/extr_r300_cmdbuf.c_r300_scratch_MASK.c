#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  stack_ptr_addr ;
struct TYPE_9__ {scalar_t__* scratch_ages; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_3__ drm_radeon_kcmd_buffer_t ;
struct TYPE_8__ {int n_bufs; int reg; } ;
struct TYPE_11__ {TYPE_1__ scratch; } ;
typedef  TYPE_4__ drm_r300_cmd_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ RADEON_SCRATCH_REG0 ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(drm_radeon_private_t *dev_priv,
			drm_radeon_kcmd_buffer_t *cmdbuf,
			drm_r300_cmd_header_t header)
{
	u32 *ref_age_base;
	u32 i, *buf_idx, h_pending;
	u64 *ptr_addr;
	u64 stack_ptr_addr;
	RING_LOCALS;

	if (FUNC9(cmdbuf->buffer) <
	    (sizeof(u64) + header.scratch.n_bufs * sizeof(*buf_idx))) {
		return -EINVAL;
	}

	if (header.scratch.reg >= 5) {
		return -EINVAL;
	}

	dev_priv->scratch_ages[header.scratch.reg]++;

	ptr_addr = FUNC8(cmdbuf->buffer,
			sizeof(stack_ptr_addr), &stack_ptr_addr);
	ref_age_base = (u32 *)(unsigned long)FUNC10(ptr_addr);

	for (i=0; i < header.scratch.n_bufs; i++) {
		buf_idx = FUNC7(cmdbuf->buffer, 0);
		*buf_idx *= 2; /* 8 bytes per buf */

		if (FUNC4(ref_age_base + *buf_idx,
				&dev_priv->scratch_ages[header.scratch.reg],
				sizeof(u32)))
			return -EINVAL;

		if (FUNC3(&h_pending,
				ref_age_base + *buf_idx + 1,
				sizeof(u32)))
			return -EINVAL;

		if (h_pending == 0)
			return -EINVAL;

		h_pending--;

		if (FUNC4(ref_age_base + *buf_idx + 1,
					&h_pending,
					sizeof(u32)))
			return -EINVAL;

		FUNC6(cmdbuf->buffer, sizeof(*buf_idx));
	}

	FUNC1(2);
	FUNC5( FUNC2( RADEON_SCRATCH_REG0 + header.scratch.reg * 4, 0 ) );
	FUNC5( dev_priv->scratch_ages[header.scratch.reg] );
	FUNC0();

	return 0;
}