#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef  size_t u16 ;
struct radeon_atpx {int /*<<< orphan*/  functions; int /*<<< orphan*/  handle; } ;
struct atpx_verify_interface {size_t version; int /*<<< orphan*/  function_bits; } ;
typedef  int /*<<< orphan*/  output ;

/* Variables and functions */
 int /*<<< orphan*/  ATPX_FUNCTION_VERIFY_INTERFACE ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct atpx_verify_interface*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct atpx_verify_interface*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 union acpi_object* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct radeon_atpx *atpx)
{
	union acpi_object *info;
	struct atpx_verify_interface output;
	size_t size;
	int err = 0;

	info = FUNC5(atpx->handle, ATPX_FUNCTION_VERIFY_INTERFACE, NULL);
	if (!info)
		return -EIO;

	FUNC2(&output, 0, sizeof(output));

	size = *(u16 *) info->buffer.pointer;
	if (size < 8) {
		FUNC4("ATPX buffer is too small: %zu\n", size);
		err = -EINVAL;
		goto out;
	}
	size = FUNC3(sizeof(output), size);

	FUNC1(&output, info->buffer.pointer, size);

	/* TODO: check version? */
	FUNC4("ATPX version %u\n", output.version);

	FUNC6(&atpx->functions, output.function_bits);

out:
	FUNC0(info);
	return err;
}