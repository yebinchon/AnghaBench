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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct e1000_hw {int mac_type; scalar_t__ phy_init_script; } ;

/* Variables and functions */
 int IGP01E1000_ANALOG_FUSE_BYPASS ; 
 scalar_t__ IGP01E1000_ANALOG_FUSE_COARSE_10 ; 
 int IGP01E1000_ANALOG_FUSE_COARSE_MASK ; 
 int IGP01E1000_ANALOG_FUSE_COARSE_THRESH ; 
 int IGP01E1000_ANALOG_FUSE_CONTROL ; 
 int IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL ; 
 scalar_t__ IGP01E1000_ANALOG_FUSE_FINE_1 ; 
 scalar_t__ IGP01E1000_ANALOG_FUSE_FINE_10 ; 
 int IGP01E1000_ANALOG_FUSE_FINE_MASK ; 
 int IGP01E1000_ANALOG_FUSE_POLY_MASK ; 
 int IGP01E1000_ANALOG_FUSE_STATUS ; 
 int IGP01E1000_ANALOG_SPARE_FUSE_ENABLED ; 
 int IGP01E1000_ANALOG_SPARE_FUSE_STATUS ; 
#define  e1000_82541 131 
#define  e1000_82541_rev_2 130 
#define  e1000_82547 129 
#define  e1000_82547_rev_2 128 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 ret_val;
	u16 phy_saved_data;

	FUNC2("e1000_phy_init_script");

	if (hw->phy_init_script) {
		FUNC3(20);

		/* Save off the current value of register 0x2F5B to be restored at
		 * the end of this routine. */
		ret_val = FUNC0(hw, 0x2F5B, &phy_saved_data);

		/* Disabled the PHY transmitter */
		FUNC1(hw, 0x2F5B, 0x0003);
		FUNC3(20);

		FUNC1(hw, 0x0000, 0x0140);
		FUNC3(5);

		switch (hw->mac_type) {
		case e1000_82541:
		case e1000_82547:
			FUNC1(hw, 0x1F95, 0x0001);
			FUNC1(hw, 0x1F71, 0xBD21);
			FUNC1(hw, 0x1F79, 0x0018);
			FUNC1(hw, 0x1F30, 0x1600);
			FUNC1(hw, 0x1F31, 0x0014);
			FUNC1(hw, 0x1F32, 0x161C);
			FUNC1(hw, 0x1F94, 0x0003);
			FUNC1(hw, 0x1F96, 0x003F);
			FUNC1(hw, 0x2010, 0x0008);
			break;

		case e1000_82541_rev_2:
		case e1000_82547_rev_2:
			FUNC1(hw, 0x1F73, 0x0099);
			break;
		default:
			break;
		}

		FUNC1(hw, 0x0000, 0x3300);
		FUNC3(20);

		/* Now enable the transmitter */
		FUNC1(hw, 0x2F5B, phy_saved_data);

		if (hw->mac_type == e1000_82547) {
			u16 fused, fine, coarse;

			/* Move to analog registers page */
			FUNC0(hw,
					   IGP01E1000_ANALOG_SPARE_FUSE_STATUS,
					   &fused);

			if (!(fused & IGP01E1000_ANALOG_SPARE_FUSE_ENABLED)) {
				FUNC0(hw,
						   IGP01E1000_ANALOG_FUSE_STATUS,
						   &fused);

				fine = fused & IGP01E1000_ANALOG_FUSE_FINE_MASK;
				coarse =
				    fused & IGP01E1000_ANALOG_FUSE_COARSE_MASK;

				if (coarse >
				    IGP01E1000_ANALOG_FUSE_COARSE_THRESH) {
					coarse -=
					    IGP01E1000_ANALOG_FUSE_COARSE_10;
					fine -= IGP01E1000_ANALOG_FUSE_FINE_1;
				} else if (coarse ==
					   IGP01E1000_ANALOG_FUSE_COARSE_THRESH)
					fine -= IGP01E1000_ANALOG_FUSE_FINE_10;

				fused =
				    (fused & IGP01E1000_ANALOG_FUSE_POLY_MASK) |
				    (fine & IGP01E1000_ANALOG_FUSE_FINE_MASK) |
				    (coarse &
				     IGP01E1000_ANALOG_FUSE_COARSE_MASK);

				FUNC1(hw,
						    IGP01E1000_ANALOG_FUSE_CONTROL,
						    fused);
				FUNC1(hw,
						    IGP01E1000_ANALOG_FUSE_BYPASS,
						    IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL);
			}
		}
	}
}