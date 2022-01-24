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
typedef  scalar_t__ u32 ;
struct bfi_ioc_image_hdr_s {scalar_t__ signature; scalar_t__ bootenv; } ;
struct bfa_ioc_s {int dummy; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bfa_boolean_t
FUNC7(struct bfa_ioc_s *ioc, u32 boot_env)
{
	struct bfi_ioc_image_hdr_s fwhdr, *drv_fwhdr;

	FUNC3(ioc, &fwhdr);
	drv_fwhdr = (struct bfi_ioc_image_hdr_s *)
		FUNC0(FUNC1(ioc), 0);

	if (fwhdr.signature != FUNC5(drv_fwhdr->signature)) {
		FUNC4(ioc, fwhdr.signature);
		FUNC4(ioc, drv_fwhdr->signature);
		return BFA_FALSE;
	}

	if (FUNC6(fwhdr.bootenv) != boot_env) {
		FUNC4(ioc, fwhdr.bootenv);
		FUNC4(ioc, boot_env);
		return BFA_FALSE;
	}

	return FUNC2(ioc, &fwhdr);
}