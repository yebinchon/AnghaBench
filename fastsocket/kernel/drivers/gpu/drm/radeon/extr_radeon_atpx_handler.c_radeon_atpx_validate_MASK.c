#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef  int u32 ;
typedef  size_t u16 ;
struct TYPE_4__ {int power_cntl; int i2c_mux_cntl; int disp_mux_cntl; scalar_t__ px_params; } ;
struct radeon_atpx {TYPE_2__ functions; int /*<<< orphan*/  handle; } ;
struct atpx_px_params {int flags; int valid_flags; } ;
typedef  int /*<<< orphan*/  output ;

/* Variables and functions */
 int ATPX_CRT1_RGB_SIGNAL_MUXED ; 
 int ATPX_DFP_SIGNAL_MUXED ; 
 int /*<<< orphan*/  ATPX_FUNCTION_GET_PX_PARAMETERS ; 
 int ATPX_SEPARATE_MUX_FOR_I2C ; 
 int ATPX_TV_SIGNAL_MUXED ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct atpx_px_params*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct atpx_px_params*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 union acpi_object* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct radeon_atpx *atpx)
{
	/* make sure required functions are enabled */
	/* dGPU power control is required */
	atpx->functions.power_cntl = true;

	if (atpx->functions.px_params) {
		union acpi_object *info;
		struct atpx_px_params output;
		size_t size;
		u32 valid_bits;

		info = FUNC5(atpx->handle, ATPX_FUNCTION_GET_PX_PARAMETERS, NULL);
		if (!info)
			return -EIO;

		FUNC2(&output, 0, sizeof(output));

		size = *(u16 *) info->buffer.pointer;
		if (size < 10) {
			FUNC4("ATPX buffer is too small: %zu\n", size);
			FUNC0(info);
			return -EINVAL;
		}
		size = FUNC3(sizeof(output), size);

		FUNC1(&output, info->buffer.pointer, size);

		valid_bits = output.flags & output.valid_flags;
		/* if separate mux flag is set, mux controls are required */
		if (valid_bits & ATPX_SEPARATE_MUX_FOR_I2C) {
			atpx->functions.i2c_mux_cntl = true;
			atpx->functions.disp_mux_cntl = true;
		}
		/* if any outputs are muxed, mux controls are required */
		if (valid_bits & (ATPX_CRT1_RGB_SIGNAL_MUXED |
				  ATPX_TV_SIGNAL_MUXED |
				  ATPX_DFP_SIGNAL_MUXED))
			atpx->functions.disp_mux_cntl = true;

		FUNC0(info);
	}
	return 0;
}