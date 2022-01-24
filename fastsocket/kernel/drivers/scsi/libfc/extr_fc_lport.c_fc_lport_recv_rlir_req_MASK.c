#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* seq_els_rsp_send ) (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fc_lport *lport, struct fc_frame *fp)
{
	FUNC0(lport, "Received RLIR request while in state %s\n",
		     FUNC2(lport));

	lport->tt.seq_els_rsp_send(fp, ELS_LS_ACC, NULL);
	FUNC1(fp);
}