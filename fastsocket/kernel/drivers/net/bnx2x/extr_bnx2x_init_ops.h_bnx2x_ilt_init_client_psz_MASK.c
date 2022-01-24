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
typedef  int /*<<< orphan*/  u32 ;
struct ilt_client_info {int flags; int page_size; } ;
struct bnx2x_ilt {struct ilt_client_info* clients; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 struct bnx2x_ilt* FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ILT_CLIENT_SKIP_INIT ; 
#define  INITOP_CLEAR 130 
#define  INITOP_INIT 129 
#define  INITOP_SET 128 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp, int cli_num,
				      u32 psz_reg, u8 initop)
{
	struct bnx2x_ilt *ilt = FUNC0(bp);
	struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

	if (ilt_cli->flags & ILT_CLIENT_SKIP_INIT)
		return;

	switch (initop) {
	case INITOP_INIT:
		/* set in the init-value array */
	case INITOP_SET:
		FUNC2(bp, psz_reg, FUNC1(ilt_cli->page_size >> 12));
		break;
	case INITOP_CLEAR:
		break;
	}
}