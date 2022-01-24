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
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EZUSB_FRAME_CONTROL ; 
 int /*<<< orphan*/  EZUSB_RID_READ_PDA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ezusb_priv*,struct request_context*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct request_context* FUNC2 (struct ezusb_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hermes *hw, __le16 *pda,
			  u32 pda_addr, u16 pda_len)
{
	struct ezusb_priv *upriv = hw->priv;
	struct request_context *ctx;
	__le16 data[] = {
		FUNC0(pda_addr & 0xffff),
		FUNC0(pda_len - 4)
	};
	ctx = FUNC2(upriv, EZUSB_RID_READ_PDA, EZUSB_RID_READ_PDA);
	if (!ctx)
		return -ENOMEM;

	/* wl_lkm does not include PDA size in the PDA area.
	 * We will pad the information into pda, so other routines
	 * don't have to be modified */
	pda[0] = FUNC0(pda_len - 2);
	/* Includes CFG_PROD_DATA but not itself */
	pda[1] = FUNC0(0x0800); /* CFG_PROD_DATA */

	return FUNC1(upriv, ctx, sizeof(data), &data,
				EZUSB_FRAME_CONTROL, &pda[2], pda_len - 4,
				NULL);
}