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
typedef  int u32 ;
typedef  int u16 ;
struct lcnphy_unsign16_struct {int re; int im; } ;
struct lcnphy_spb_tone {int re; int im; } ;
struct brcms_phy {int dummy; } ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RADIO_2064_REG026 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct lcnphy_spb_tone* lcnphy_spb_tone_3750 ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 
 int FUNC4 (struct brcms_phy*,int) ; 
 int FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct lcnphy_unsign16_struct FUNC7 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC16(struct brcms_phy *pi, int cal_type, int num_levels,
	      int step_size_lg2)
{
	const struct lcnphy_spb_tone *phy_c1;
	struct lcnphy_spb_tone phy_c2;
	struct lcnphy_unsign16_struct phy_c3;
	int phy_c4, phy_c5, k, l, j, phy_c6;
	u16 phy_c7, phy_c8, phy_c9;
	s16 phy_c10, phy_c11, phy_c12, phy_c13, phy_c14, phy_c15, phy_c16;
	s16 *ptr, phy_c17;
	s32 phy_c18, phy_c19;
	u32 phy_c20, phy_c21;
	bool phy_c22, phy_c23, phy_c24, phy_c25;
	u16 phy_c26, phy_c27;
	u16 phy_c28, phy_c29, phy_c30;
	u16 phy_c31;
	u16 *phy_c32;
	phy_c21 = 0;
	phy_c10 = phy_c13 = phy_c14 = phy_c8 = 0;
	ptr = FUNC1(sizeof(s16) * 131, GFP_ATOMIC);
	if (NULL == ptr)
		return;

	phy_c32 = FUNC1(sizeof(u16) * 20, GFP_ATOMIC);
	if (NULL == phy_c32) {
		FUNC0(ptr);
		return;
	}
	phy_c26 = FUNC4(pi, 0x6da);
	phy_c27 = FUNC4(pi, 0x6db);
	phy_c31 = FUNC5(pi, RADIO_2064_REG026);
	FUNC14(pi, 0x93d, 0xC0);

	FUNC10(pi, 3750, 88, 0);
	FUNC14(pi, 0x6da, 0xffff);
	FUNC3(pi, 0x6db, 0x3);

	FUNC12(pi, phy_c32);
	FUNC6(500);
	phy_c28 = FUNC4(pi, 0x938);
	phy_c29 = FUNC4(pi, 0x4d7);
	phy_c30 = FUNC4(pi, 0x4d8);
	FUNC3(pi, 0x938, 0x1 << 2);
	FUNC3(pi, 0x4d7, 0x1 << 2);
	FUNC3(pi, 0x4d7, 0x1 << 3);
	FUNC2(pi, 0x4d7, (0x7 << 12), 0x2 << 12);
	FUNC3(pi, 0x4d8, 1 << 0);
	FUNC3(pi, 0x4d8, 1 << 1);
	FUNC2(pi, 0x4d8, (0x3ff << 2), 0x23A << 2);
	FUNC2(pi, 0x4d8, (0x7 << 12), 0x7 << 12);
	phy_c1 = &lcnphy_spb_tone_3750[0];
	phy_c4 = 32;

	if (num_levels == 0) {
		if (cal_type != 0)
			num_levels = 4;
		else
			num_levels = 9;
	}
	if (step_size_lg2 == 0) {
		if (cal_type != 0)
			step_size_lg2 = 3;
		else
			step_size_lg2 = 8;
	}

	phy_c7 = (1 << step_size_lg2);
	phy_c3 = FUNC7(pi, cal_type);
	phy_c15 = (s16) phy_c3.re;
	phy_c16 = (s16) phy_c3.im;
	if (cal_type == 2) {
		if (phy_c3.re > 127)
			phy_c15 = phy_c3.re - 256;
		if (phy_c3.im > 127)
			phy_c16 = phy_c3.im - 256;
	}
	FUNC9(pi, cal_type, phy_c15, phy_c16);
	FUNC6(20);
	for (phy_c8 = 0; phy_c7 != 0 && phy_c8 < num_levels; phy_c8++) {
		phy_c23 = true;
		phy_c22 = false;
		switch (cal_type) {
		case 0:
			phy_c10 = 511;
			break;
		case 2:
			phy_c10 = 127;
			break;
		case 3:
			phy_c10 = 15;
			break;
		case 4:
			phy_c10 = 15;
			break;
		}

		phy_c9 = FUNC4(pi, 0x93d);
		phy_c9 = 2 * phy_c9;
		phy_c24 = false;
		phy_c5 = 7;
		phy_c25 = true;
		while (1) {
			FUNC15(pi, RADIO_2064_REG026,
					(phy_c5 & 0x7) | ((phy_c5 & 0x7) << 4));
			FUNC6(50);
			phy_c22 = false;
			ptr[130] = 0;
			FUNC8(pi, 1, phy_c9, &ptr[0], 2);
			if (ptr[130] == 1)
				phy_c22 = true;
			if (phy_c22)
				phy_c5 -= 1;
			if ((phy_c22 != phy_c24) && (!phy_c25))
				break;
			if (!phy_c22)
				phy_c5 += 1;
			if (phy_c5 <= 0 || phy_c5 >= 7)
				break;
			phy_c24 = phy_c22;
			phy_c25 = false;
		}

		if (phy_c5 < 0)
			phy_c5 = 0;
		else if (phy_c5 > 7)
			phy_c5 = 7;

		for (k = -phy_c7; k <= phy_c7; k += phy_c7) {
			for (l = -phy_c7; l <= phy_c7; l += phy_c7) {
				phy_c11 = phy_c15 + k;
				phy_c12 = phy_c16 + l;

				if (phy_c11 < -phy_c10)
					phy_c11 = -phy_c10;
				else if (phy_c11 > phy_c10)
					phy_c11 = phy_c10;
				if (phy_c12 < -phy_c10)
					phy_c12 = -phy_c10;
				else if (phy_c12 > phy_c10)
					phy_c12 = phy_c10;
				FUNC9(pi, cal_type, phy_c11,
						  phy_c12);
				FUNC6(20);
				FUNC8(pi, 0, 0, ptr, 2);

				phy_c18 = 0;
				phy_c19 = 0;
				for (j = 0; j < 128; j++) {
					if (cal_type != 0)
						phy_c6 = j % phy_c4;
					else
						phy_c6 = (2 * j) % phy_c4;

					phy_c2.re = phy_c1[phy_c6].re;
					phy_c2.im = phy_c1[phy_c6].im;
					phy_c17 = ptr[j];
					phy_c18 = phy_c18 + phy_c17 * phy_c2.re;
					phy_c19 = phy_c19 + phy_c17 * phy_c2.im;
				}

				phy_c18 = phy_c18 >> 10;
				phy_c19 = phy_c19 >> 10;
				phy_c20 = ((phy_c18 * phy_c18) +
					   (phy_c19 * phy_c19));

				if (phy_c23 || phy_c20 < phy_c21) {
					phy_c21 = phy_c20;
					phy_c13 = phy_c11;
					phy_c14 = phy_c12;
				}
				phy_c23 = false;
			}
		}
		phy_c23 = true;
		phy_c15 = phy_c13;
		phy_c16 = phy_c14;
		phy_c7 = phy_c7 >> 1;
		FUNC9(pi, cal_type, phy_c15, phy_c16);
		FUNC6(20);
	}
	goto cleanup;
cleanup:
	FUNC13(pi, phy_c32);
	FUNC11(pi);
	FUNC14(pi, 0x6da, phy_c26);
	FUNC14(pi, 0x6db, phy_c27);
	FUNC14(pi, 0x938, phy_c28);
	FUNC14(pi, 0x4d7, phy_c29);
	FUNC14(pi, 0x4d8, phy_c30);
	FUNC15(pi, RADIO_2064_REG026, phy_c31);

	FUNC0(phy_c32);
	FUNC0(ptr);
}