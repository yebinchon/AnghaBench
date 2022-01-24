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
struct rtl8169_private {int mac_version; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  RTL_GIGA_MAC_VER_01 163 
#define  RTL_GIGA_MAC_VER_02 162 
#define  RTL_GIGA_MAC_VER_03 161 
#define  RTL_GIGA_MAC_VER_04 160 
#define  RTL_GIGA_MAC_VER_05 159 
#define  RTL_GIGA_MAC_VER_06 158 
#define  RTL_GIGA_MAC_VER_07 157 
#define  RTL_GIGA_MAC_VER_08 156 
#define  RTL_GIGA_MAC_VER_09 155 
#define  RTL_GIGA_MAC_VER_11 154 
#define  RTL_GIGA_MAC_VER_12 153 
#define  RTL_GIGA_MAC_VER_17 152 
#define  RTL_GIGA_MAC_VER_18 151 
#define  RTL_GIGA_MAC_VER_19 150 
#define  RTL_GIGA_MAC_VER_20 149 
#define  RTL_GIGA_MAC_VER_21 148 
#define  RTL_GIGA_MAC_VER_22 147 
#define  RTL_GIGA_MAC_VER_23 146 
#define  RTL_GIGA_MAC_VER_24 145 
#define  RTL_GIGA_MAC_VER_25 144 
#define  RTL_GIGA_MAC_VER_26 143 
#define  RTL_GIGA_MAC_VER_27 142 
#define  RTL_GIGA_MAC_VER_28 141 
#define  RTL_GIGA_MAC_VER_29 140 
#define  RTL_GIGA_MAC_VER_30 139 
#define  RTL_GIGA_MAC_VER_31 138 
#define  RTL_GIGA_MAC_VER_32 137 
#define  RTL_GIGA_MAC_VER_33 136 
#define  RTL_GIGA_MAC_VER_34 135 
#define  RTL_GIGA_MAC_VER_35 134 
#define  RTL_GIGA_MAC_VER_36 133 
#define  RTL_GIGA_MAC_VER_37 132 
#define  RTL_GIGA_MAC_VER_38 131 
#define  RTL_GIGA_MAC_VER_39 130 
#define  RTL_GIGA_MAC_VER_40 129 
#define  RTL_GIGA_MAC_VER_41 128 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC24 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC25 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC26 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC27 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC28(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC0(dev);

	FUNC21(tp);

	switch (tp->mac_version) {
	case RTL_GIGA_MAC_VER_01:
		break;
	case RTL_GIGA_MAC_VER_02:
	case RTL_GIGA_MAC_VER_03:
		FUNC22(tp);
		break;
	case RTL_GIGA_MAC_VER_04:
		FUNC23(tp);
		break;
	case RTL_GIGA_MAC_VER_05:
		FUNC24(tp);
		break;
	case RTL_GIGA_MAC_VER_06:
		FUNC25(tp);
		break;
	case RTL_GIGA_MAC_VER_07:
	case RTL_GIGA_MAC_VER_08:
	case RTL_GIGA_MAC_VER_09:
		FUNC1(tp);
		break;
	case RTL_GIGA_MAC_VER_11:
		FUNC4(tp);
		break;
	case RTL_GIGA_MAC_VER_12:
		FUNC5(tp);
		break;
	case RTL_GIGA_MAC_VER_17:
		FUNC5(tp);
		break;
	case RTL_GIGA_MAC_VER_18:
		FUNC10(tp);
		break;
	case RTL_GIGA_MAC_VER_19:
		FUNC6(tp);
		break;
	case RTL_GIGA_MAC_VER_20:
		FUNC7(tp);
		break;
	case RTL_GIGA_MAC_VER_21:
		FUNC8(tp);
		break;
	case RTL_GIGA_MAC_VER_22:
		FUNC9(tp);
		break;
	case RTL_GIGA_MAC_VER_23:
	case RTL_GIGA_MAC_VER_24:
		FUNC11(tp);
		break;
	case RTL_GIGA_MAC_VER_25:
		FUNC12(tp);
		break;
	case RTL_GIGA_MAC_VER_26:
		FUNC13(tp);
		break;
	case RTL_GIGA_MAC_VER_27:
		FUNC14(tp);
		break;
	case RTL_GIGA_MAC_VER_28:
		FUNC15(tp);
		break;
	case RTL_GIGA_MAC_VER_29:
	case RTL_GIGA_MAC_VER_30:
		FUNC2(tp);
		break;
	case RTL_GIGA_MAC_VER_31:
		/* None. */
		break;
	case RTL_GIGA_MAC_VER_32:
	case RTL_GIGA_MAC_VER_33:
		FUNC16(tp);
		break;
	case RTL_GIGA_MAC_VER_34:
		FUNC17(tp);
		break;
	case RTL_GIGA_MAC_VER_35:
		FUNC18(tp);
		break;
	case RTL_GIGA_MAC_VER_36:
		FUNC19(tp);
		break;

	case RTL_GIGA_MAC_VER_37:
		FUNC26(tp);
		break;

	case RTL_GIGA_MAC_VER_38:
		FUNC27(tp);
		break;

	case RTL_GIGA_MAC_VER_39:
		FUNC3(tp);
		break;

	case RTL_GIGA_MAC_VER_40:
		FUNC20(tp);
		break;

	case RTL_GIGA_MAC_VER_41:
	default:
		break;
	}
}