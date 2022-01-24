#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;
struct TYPE_8__ {int count; int reghi; int reglo; } ;
struct TYPE_10__ {TYPE_1__ packet0; } ;
typedef  TYPE_3__ drm_r300_cmd_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__) ; 

__attribute__((used)) static __inline__ int FUNC9(drm_radeon_private_t *dev_priv,
					drm_radeon_kcmd_buffer_t *cmdbuf,
					drm_r300_cmd_header_t header)
{
	int reg;
	int sz;
	RING_LOCALS;

	sz = header.packet0.count;
	reg = (header.packet0.reghi << 8) | header.packet0.reglo;

	if (!sz)
		return 0;

	if (sz * 4 > FUNC6(cmdbuf->buffer))
		return -EINVAL;

	if (reg + sz * 4 >= 0x10000) {
		FUNC3("No such registers in hardware reg=%04x sz=%d\n", reg,
			  sz);
		return -EINVAL;
	}

	if (FUNC7(reg, sz)) {
		/* go and check everything */
		return FUNC8(dev_priv, cmdbuf,
							   header);
	}
	/* the rest of the data is safe to emit, whatever the values the user passed */

	FUNC1(1 + sz);
	FUNC4(FUNC2(reg, sz - 1));
	FUNC5(cmdbuf->buffer, sz);
	FUNC0();

	return 0;
}