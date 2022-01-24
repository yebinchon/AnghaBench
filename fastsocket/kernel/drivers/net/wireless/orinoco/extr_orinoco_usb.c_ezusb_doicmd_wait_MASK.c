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
typedef  int /*<<< orphan*/  u16 ;
struct request_context {int dummy; } ;
struct hermes_response {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EZUSB_FRAME_CONTROL ; 
 int /*<<< orphan*/  EZUSB_RID_ACK ; 
 int /*<<< orphan*/  EZUSB_RID_DOCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ezusb_priv*,struct request_context*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct request_context* FUNC3 (struct ezusb_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hermes *hw, u16 cmd, u16 parm0, u16 parm1,
			     u16 parm2, struct hermes_response *resp)
{
	struct ezusb_priv *upriv = hw->priv;
	struct request_context *ctx;

	__le16 data[4] = {
		FUNC0(cmd),
		FUNC0(parm0),
		FUNC0(parm1),
		FUNC0(parm2),
	};
	FUNC1("0x%04X, parm0 0x%04X, parm1 0x%04X, parm2 0x%04X",
	    cmd, parm0, parm1, parm2);
	ctx = FUNC3(upriv, EZUSB_RID_DOCMD, EZUSB_RID_ACK);
	if (!ctx)
		return -ENOMEM;

	return FUNC2(upriv, ctx, sizeof(data), &data,
				EZUSB_FRAME_CONTROL, NULL, 0, NULL);
}