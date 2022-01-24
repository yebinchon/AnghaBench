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
struct bfi_ioc_image_hdr {scalar_t__ signature; int /*<<< orphan*/  bootenv; } ;
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int FUNC2 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct bfa_ioc *ioc, u32 boot_env)
{
	struct bfi_ioc_image_hdr fwhdr, *drv_fwhdr;

	FUNC3(ioc, &fwhdr);
	drv_fwhdr = (struct bfi_ioc_image_hdr *)
		FUNC0(FUNC1(ioc), 0);

	if (fwhdr.signature != drv_fwhdr->signature)
		return false;

	if (FUNC4(fwhdr.bootenv) != boot_env)
		return false;

	return FUNC2(ioc, &fwhdr);
}