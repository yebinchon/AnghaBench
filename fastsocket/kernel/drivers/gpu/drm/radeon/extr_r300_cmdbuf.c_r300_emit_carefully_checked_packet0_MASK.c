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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_6__ {int count; int reghi; int reglo; } ;
struct TYPE_8__ {TYPE_1__ packet0; } ;
typedef  TYPE_3__ drm_r300_cmd_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int EINVAL ; 
#define  MARK_CHECK_OFFSET 129 
#define  MARK_SAFE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int* r300_reg_flags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int FUNC8(drm_radeon_private_t *
							  dev_priv,
							  drm_radeon_kcmd_buffer_t
							  * cmdbuf,
							  drm_r300_cmd_header_t
							  header)
{
	int reg;
	int sz;
	int i;
	u32 *value;
	RING_LOCALS;

	sz = header.packet0.count;
	reg = (header.packet0.reghi << 8) | header.packet0.reglo;

	if ((sz > 64) || (sz < 0)) {
		FUNC3("Cannot emit more than 64 values at a time (reg=%04x sz=%d)\n",
			 reg, sz);
		return -EINVAL;
	}

	for (i = 0; i < sz; i++) {
		switch (r300_reg_flags[(reg >> 2) + i]) {
		case MARK_SAFE:
			break;
		case MARK_CHECK_OFFSET:
			value = FUNC6(cmdbuf->buffer, i);
			if (!FUNC7(dev_priv, *value)) {
				FUNC3("Offset failed range check (reg=%04x sz=%d)\n",
					 reg, sz);
				return -EINVAL;
			}
			break;
		default:
			FUNC3("Register %04x failed check as flag=%02x\n",
				reg + i * 4, r300_reg_flags[(reg >> 2) + i]);
			return -EINVAL;
		}
	}

	FUNC1(1 + sz);
	FUNC4(FUNC2(reg, sz - 1));
	FUNC5(cmdbuf->buffer, sz);
	FUNC0();

	return 0;
}