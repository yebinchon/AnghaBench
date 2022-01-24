#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int mode; int cur_ctrl; int /*<<< orphan*/  lpt_addr; } ;
typedef  TYPE_1__ Interface ;

/* Variables and functions */
#define  PPCMODE_BI_FW 134 
#define  PPCMODE_BI_SW 133 
#define  PPCMODE_EPP_BYTE 132 
#define  PPCMODE_EPP_DWORD 131 
#define  PPCMODE_EPP_WORD 130 
#define  PPCMODE_UNI_FW 129 
#define  PPCMODE_UNI_SW 128 
 int data_stb ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int port_dir ; 
 int port_stb ; 

__attribute__((used)) static void FUNC4(Interface *ppc, u8 *data, long count)
{
	switch(ppc->mode)
	{
		case PPCMODE_UNI_SW :
		case PPCMODE_UNI_FW :
		{
			while(count)
			{
				u8 d;

				ppc->cur_ctrl = (ppc->cur_ctrl & ~port_stb) ^ data_stb;

				FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

				// DELAY

				d = FUNC0(ppc->lpt_addr + 1);

				d = ((d & 0x80) >> 1) | ((d & 0x38) >> 3);

				ppc->cur_ctrl |= port_stb;

				FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

				// DELAY

				d |= FUNC0(ppc->lpt_addr + 1) & 0xB8;

				*data++ = d;
				count--;
			}

			break;
		}

		case PPCMODE_BI_SW :
		case PPCMODE_BI_FW :
		{
			ppc->cur_ctrl |= port_dir;

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			ppc->cur_ctrl |= port_stb;

			while(count)
			{
				ppc->cur_ctrl ^= data_stb;

				FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

				*data++ = FUNC0(ppc->lpt_addr);
				count--;
			}

			ppc->cur_ctrl &= ~port_stb;

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			ppc->cur_ctrl &= ~port_dir;

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			break;
		}

		case PPCMODE_EPP_BYTE :
		{
			FUNC3((ppc->cur_ctrl | port_dir), ppc->lpt_addr + 2);

			// DELAY

			while(count)
			{
				*data++ = FUNC0(ppc->lpt_addr + 4);
				count--;
			}

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			break;
		}

		case PPCMODE_EPP_WORD :
		{
			FUNC3((ppc->cur_ctrl | port_dir), ppc->lpt_addr + 2);

			// DELAY

			while(count > 1)
			{
				*((u16 *)data) = FUNC2(ppc->lpt_addr + 4);
				data  += 2;
				count -= 2;
			}

			while(count)
			{
				*data++ = FUNC0(ppc->lpt_addr + 4);
				count--;
			}

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			break;
		}

		case PPCMODE_EPP_DWORD :
		{
			FUNC3((ppc->cur_ctrl | port_dir),ppc->lpt_addr + 2);

			// DELAY

			while(count > 3)
			{
				*((u32 *)data) = FUNC1(ppc->lpt_addr + 4);
				data  += 4;
				count -= 4;
			}

			while(count)
			{
				*data++ = FUNC0(ppc->lpt_addr + 4);
				count--;
			}

			FUNC3(ppc->cur_ctrl, ppc->lpt_addr + 2);

			break;
		}
	}

}