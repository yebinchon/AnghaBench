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
struct rtl_fw_phy_action {size_t size; int /*<<< orphan*/ * code; } ;
struct rtl_fw {struct rtl_fw_phy_action phy_action; } ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  PHY_BJMPN 143 
#define  PHY_CLEAR_READCOUNT 142 
#define  PHY_COMP_EQ_SKIPN 141 
#define  PHY_COMP_NEQ_SKIPN 140 
#define  PHY_DATA_AND 139 
#define  PHY_DATA_OR 138 
#define  PHY_DELAY_MS 137 
#define  PHY_READ 136 
#define  PHY_READCOUNT_EQ_SKIP 135 
#define  PHY_READ_EFUSE 134 
#define  PHY_READ_MAC_BYTE 133 
#define  PHY_SKIPN 132 
#define  PHY_WRITE 131 
#define  PHY_WRITE_ERI_WORD 130 
#define  PHY_WRITE_MAC_BYTE 129 
#define  PHY_WRITE_PREVIOUS 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct rtl8169_private*,int) ; 
 int FUNC4 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp, struct rtl_fw *rtl_fw)
{
	struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;
	u32 predata, count;
	size_t index;

	predata = count = 0;

	for (index = 0; index < pa->size; ) {
		u32 action = FUNC1(pa->code[index]);
		u32 data = action & 0x0000ffff;
		u32 regno = (action & 0x0fff0000) >> 16;

		if (!action)
			break;

		switch(action & 0xf0000000) {
		case PHY_READ:
			predata = FUNC4(tp, regno);
			count++;
			index++;
			break;
		case PHY_DATA_OR:
			predata |= data;
			index++;
			break;
		case PHY_DATA_AND:
			predata &= data;
			index++;
			break;
		case PHY_BJMPN:
			index -= regno;
			break;
		case PHY_READ_EFUSE:
			predata = FUNC3(tp, regno);
			index++;
			break;
		case PHY_CLEAR_READCOUNT:
			count = 0;
			index++;
			break;
		case PHY_WRITE:
			FUNC5(tp, regno, data);
			index++;
			break;
		case PHY_READCOUNT_EQ_SKIP:
			index += (count == data) ? 2 : 1;
			break;
		case PHY_COMP_EQ_SKIPN:
			if (predata == data)
				index += regno;
			index++;
			break;
		case PHY_COMP_NEQ_SKIPN:
			if (predata != data)
				index += regno;
			index++;
			break;
		case PHY_WRITE_PREVIOUS:
			FUNC5(tp, regno, predata);
			index++;
			break;
		case PHY_SKIPN:
			index += regno + 1;
			break;
		case PHY_DELAY_MS:
			FUNC2(data);
			index++;
			break;

		case PHY_READ_MAC_BYTE:
		case PHY_WRITE_MAC_BYTE:
		case PHY_WRITE_ERI_WORD:
		default:
			FUNC0();
		}
	}
}