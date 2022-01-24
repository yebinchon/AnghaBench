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
struct fc_frame_header {int fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int /*<<< orphan*/  ct_cmd; } ;

/* Variables and functions */
#define  ELS_LS_ACC 136 
#define  ELS_LS_RJT 135 
#define  FC_EX_CLOSED 134 
#define  FC_EX_TIMEOUT 133 
#define  FC_FS_ACC 132 
#define  FC_FS_RJT 131 
#define  FC_NO_ERR 130 
#define  FC_TYPE_CT 129 
#define  FC_TYPE_ELS 128 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int FUNC1 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC2 (struct fc_frame*) ; 
 struct fc_ct_hdr* FUNC3 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

const char *FUNC6(struct fc_frame *fp)
{
	const char *msg;
	struct fc_frame_header *fh;
	struct fc_ct_hdr *ct;

	if (FUNC0(fp)) {
		switch (-FUNC1(fp)) {
		case FC_NO_ERR:
			msg = "response no error";
			break;
		case FC_EX_TIMEOUT:
			msg = "response timeout";
			break;
		case FC_EX_CLOSED:
			msg = "response closed";
			break;
		default:
			msg = "response unknown error";
			break;
		}
	} else {
		fh = FUNC2(fp);
		switch (fh->fh_type) {
		case FC_TYPE_ELS:
			switch (FUNC4(fp)) {
			case ELS_LS_ACC:
				msg = "accept";
				break;
			case ELS_LS_RJT:
				msg = "reject";
				break;
			default:
				msg = "response unknown ELS";
				break;
			}
			break;
		case FC_TYPE_CT:
			ct = FUNC3(fp, sizeof(*ct));
			if (ct) {
				switch (FUNC5(ct->ct_cmd)) {
				case FC_FS_ACC:
					msg = "CT accept";
					break;
				case FC_FS_RJT:
					msg = "CT reject";
					break;
				default:
					msg = "response unknown CT";
					break;
				}
			} else {
				msg = "short CT response";
			}
			break;
		default:
			msg = "response not ELS or CT";
			break;
		}
	}
	return msg;
}