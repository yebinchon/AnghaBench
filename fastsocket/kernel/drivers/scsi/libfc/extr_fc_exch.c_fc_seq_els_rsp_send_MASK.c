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
struct fc_seq_els_data {int /*<<< orphan*/  explan; int /*<<< orphan*/  reason; } ;
struct fc_frame {int dummy; } ;
typedef  enum fc_els_cmd { ____Placeholder_fc_els_cmd } fc_els_cmd ;

/* Variables and functions */
#define  ELS_LS_ACC 131 
#define  ELS_LS_RJT 130 
#define  ELS_REC 129 
#define  ELS_RRQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 

__attribute__((used)) static void FUNC6(struct fc_frame *fp, enum fc_els_cmd els_cmd,
				struct fc_seq_els_data *els_data)
{
	switch (els_cmd) {
	case ELS_LS_RJT:
		FUNC4(fp, els_data->reason, els_data->explan);
		break;
	case ELS_LS_ACC:
		FUNC3(fp);
		break;
	case ELS_RRQ:
		FUNC2(fp);
		break;
	case ELS_REC:
		FUNC1(fp);
		break;
	default:
		FUNC0(FUNC5(fp), "Invalid ELS CMD:%x\n", els_cmd);
	}
}