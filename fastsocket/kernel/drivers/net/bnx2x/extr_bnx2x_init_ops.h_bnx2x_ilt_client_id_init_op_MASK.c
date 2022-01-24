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
typedef  int /*<<< orphan*/  u8 ;
struct ilt_client_info {int dummy; } ;
struct bnx2x_ilt {struct ilt_client_info* clients; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 struct bnx2x_ilt* FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct ilt_client_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp,
					int cli_num, u8 initop)
{
	struct bnx2x_ilt *ilt = FUNC0(bp);
	struct ilt_client_info *ilt_cli = &ilt->clients[cli_num];

	FUNC1(bp, ilt_cli, initop);
}