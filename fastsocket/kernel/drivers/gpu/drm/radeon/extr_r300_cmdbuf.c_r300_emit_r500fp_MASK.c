#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_6__ {int count; int adrhi_flags; int adrlo; } ;
struct TYPE_8__ {TYPE_1__ r500fp; } ;
typedef  TYPE_3__ drm_r300_cmd_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int R500FP_CONSTANT_CLAMP ; 
 int R500FP_CONSTANT_TYPE ; 
 int /*<<< orphan*/  R500_GA_US_VECTOR_DATA ; 
 int /*<<< orphan*/  R500_GA_US_VECTOR_INDEX ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(drm_radeon_private_t *dev_priv,
				       drm_radeon_kcmd_buffer_t *cmdbuf,
				       drm_r300_cmd_header_t header)
{
	int sz;
	int addr;
	int type;
	int isclamp;
	int stride;
	RING_LOCALS;

	sz = header.r500fp.count;
	/* address is 9 bits 0 - 8, bit 1 of flags is part of address */
	addr = ((header.r500fp.adrhi_flags & 1) << 8) | header.r500fp.adrlo;

	type = !!(header.r500fp.adrhi_flags & R500FP_CONSTANT_TYPE);
	isclamp = !!(header.r500fp.adrhi_flags & R500FP_CONSTANT_CLAMP);

	addr |= (type << 16);
	addr |= (isclamp << 17);

	stride = type ? 4 : 6;

	FUNC3("r500fp %d %d type: %d\n", sz, addr, type);
	if (!sz)
		return 0;
	if (sz * stride * 4 > FUNC7(cmdbuf->buffer))
		return -EINVAL;

	FUNC1(3 + sz * stride);
	FUNC6(R500_GA_US_VECTOR_INDEX, addr);
	FUNC4(FUNC2(R500_GA_US_VECTOR_DATA, sz * stride - 1));
	FUNC5(cmdbuf->buffer, sz * stride);

	FUNC0();

	return 0;
}