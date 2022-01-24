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
struct radeon_device {int dummy; } ;
typedef  enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  DC_HOT_PLUG_DETECT1_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HOT_PLUG_DETECT2_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HOT_PLUG_DETECT3_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HOT_PLUG_DETECTx_INT_POLARITY ; 
 int /*<<< orphan*/  DC_HPD1_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD2_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD3_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD4_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD5_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPD6_INT_CONTROL ; 
 int /*<<< orphan*/  DC_HPDx_INT_POLARITY ; 
#define  RADEON_HPD_1 133 
#define  RADEON_HPD_2 132 
#define  RADEON_HPD_3 131 
#define  RADEON_HPD_4 130 
#define  RADEON_HPD_5 129 
#define  RADEON_HPD_6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,int) ; 

void FUNC4(struct radeon_device *rdev,
			   enum radeon_hpd_id hpd)
{
	u32 tmp;
	bool connected = FUNC3(rdev, hpd);

	if (FUNC0(rdev)) {
		switch (hpd) {
		case RADEON_HPD_1:
			tmp = FUNC1(DC_HPD1_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD1_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_2:
			tmp = FUNC1(DC_HPD2_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD2_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_3:
			tmp = FUNC1(DC_HPD3_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD3_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_4:
			tmp = FUNC1(DC_HPD4_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD4_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_5:
			tmp = FUNC1(DC_HPD5_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD5_INT_CONTROL, tmp);
			break;
			/* DCE 3.2 */
		case RADEON_HPD_6:
			tmp = FUNC1(DC_HPD6_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HPDx_INT_POLARITY;
			else
				tmp |= DC_HPDx_INT_POLARITY;
			FUNC2(DC_HPD6_INT_CONTROL, tmp);
			break;
		default:
			break;
		}
	} else {
		switch (hpd) {
		case RADEON_HPD_1:
			tmp = FUNC1(DC_HOT_PLUG_DETECT1_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
			else
				tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
			FUNC2(DC_HOT_PLUG_DETECT1_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_2:
			tmp = FUNC1(DC_HOT_PLUG_DETECT2_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
			else
				tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
			FUNC2(DC_HOT_PLUG_DETECT2_INT_CONTROL, tmp);
			break;
		case RADEON_HPD_3:
			tmp = FUNC1(DC_HOT_PLUG_DETECT3_INT_CONTROL);
			if (connected)
				tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
			else
				tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
			FUNC2(DC_HOT_PLUG_DETECT3_INT_CONTROL, tmp);
			break;
		default:
			break;
		}
	}
}