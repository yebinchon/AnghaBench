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
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
typedef  char const __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EZUSB_FRAME_CONTROL ; 
 int /*<<< orphan*/  EZUSB_RID_ACK ; 
 int /*<<< orphan*/  EZUSB_RID_PROG_BYTES ; 
 int /*<<< orphan*/  EZUSB_RID_PROG_SET_ADDR ; 
 char FUNC0 (int) ; 
 int FUNC1 (struct ezusb_priv*,struct request_context*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct request_context* FUNC2 (struct ezusb_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hermes *hw, const char *buf,
			       u32 addr, u32 len)
{
	struct ezusb_priv *upriv = hw->priv;
	struct request_context *ctx;
	__le32 data = FUNC0(addr);
	int err;

	ctx = FUNC2(upriv, EZUSB_RID_PROG_SET_ADDR, EZUSB_RID_ACK);
	if (!ctx)
		return -ENOMEM;

	err = FUNC1(upriv, ctx, sizeof(data), &data,
			       EZUSB_FRAME_CONTROL, NULL, 0, NULL);
	if (err)
		return err;

	ctx = FUNC2(upriv, EZUSB_RID_PROG_BYTES, EZUSB_RID_ACK);
	if (!ctx)
		return -ENOMEM;

	return FUNC1(upriv, ctx, len, buf,
				EZUSB_FRAME_CONTROL, NULL, 0, NULL);
}