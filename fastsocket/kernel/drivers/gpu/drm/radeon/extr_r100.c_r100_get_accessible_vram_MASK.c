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
typedef  int u8 ;
typedef  int u32 ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV280 ; 
 scalar_t__ CHIP_RV350 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RADEON_CONFIG_APER_SIZE ; 
 int RADEON_HDP_APER_CNTL ; 
 int /*<<< orphan*/  RADEON_HOST_PATH_CNTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static u32 FUNC4(struct radeon_device *rdev)
{
	u32 aper_size;
	u8 byte;

	aper_size = FUNC1(RADEON_CONFIG_APER_SIZE);

	/* Set HDP_APER_CNTL only on cards that are known not to be broken,
	 * that is has the 2nd generation multifunction PCI interface
	 */
	if (rdev->family == CHIP_RV280 ||
	    rdev->family >= CHIP_RV350) {
		FUNC2(RADEON_HOST_PATH_CNTL, RADEON_HDP_APER_CNTL,
		       ~RADEON_HDP_APER_CNTL);
		FUNC0("Generation 2 PCI interface, using max accessible memory\n");
		return aper_size * 2;
	}

	/* Older cards have all sorts of funny issues to deal with. First
	 * check if it's a multifunction card by reading the PCI config
	 * header type... Limit those to one aperture size
	 */
	FUNC3(rdev->pdev, 0xe, &byte);
	if (byte & 0x80) {
		FUNC0("Generation 1 PCI interface in multifunction mode\n");
		FUNC0("Limiting VRAM to one aperture\n");
		return aper_size;
	}

	/* Single function older card. We read HDP_APER_CNTL to see how the BIOS
	 * have set it up. We don't write this as it's broken on some ASICs but
	 * we expect the BIOS to have done the right thing (might be too optimistic...)
	 */
	if (FUNC1(RADEON_HOST_PATH_CNTL) & RADEON_HDP_APER_CNTL)
		return aper_size * 2;
	return aper_size;
}