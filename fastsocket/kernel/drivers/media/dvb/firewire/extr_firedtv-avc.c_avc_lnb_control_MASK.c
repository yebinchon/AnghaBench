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
struct firedtv {int subunit; int /*<<< orphan*/  avc_mutex; int /*<<< orphan*/  device; int /*<<< orphan*/  avc_data_length; scalar_t__ avc_data; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct avc_response_frame {scalar_t__ response; } ;
struct avc_command_frame {int subunit; char* operand; int /*<<< orphan*/  opcode; int /*<<< orphan*/  ctype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  AVC_CTYPE_CONTROL ; 
 int /*<<< orphan*/  AVC_OPCODE_VENDOR ; 
 scalar_t__ AVC_RESPONSE_ACCEPTED ; 
 int AVC_SUBUNIT_TYPE_TUNER ; 
 int EINVAL ; 
 char SFE_VENDOR_DE_COMPANYID_0 ; 
 char SFE_VENDOR_DE_COMPANYID_1 ; 
 char SFE_VENDOR_DE_COMPANYID_2 ; 
 char SFE_VENDOR_OPCODE_LNB_CONTROL ; 
 int FUNC1 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct avc_command_frame*,int) ; 

int FUNC6(struct firedtv *fdtv, char voltage, char burst,
		    char conttone, char nrdiseq,
		    struct dvb_diseqc_master_cmd *diseqcmd)
{
	struct avc_command_frame *c = (void *)fdtv->avc_data;
	struct avc_response_frame *r = (void *)fdtv->avc_data;
	int pos, j, k, ret;

	FUNC3(&fdtv->avc_mutex);

	c->ctype   = AVC_CTYPE_CONTROL;
	c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
	c->opcode  = AVC_OPCODE_VENDOR;

	c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
	c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
	c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
	c->operand[3] = SFE_VENDOR_OPCODE_LNB_CONTROL;
	c->operand[4] = voltage;
	c->operand[5] = nrdiseq;

	pos = 6;
	for (j = 0; j < nrdiseq; j++) {
		c->operand[pos++] = diseqcmd[j].msg_len;

		for (k = 0; k < diseqcmd[j].msg_len; k++)
			c->operand[pos++] = diseqcmd[j].msg[k];
	}
	c->operand[pos++] = burst;
	c->operand[pos++] = conttone;
	FUNC5(c, pos);

	fdtv->avc_data_length = FUNC0(3 + pos, 4);
	ret = FUNC1(fdtv);
	if (ret < 0)
		goto out;

	if (r->response != AVC_RESPONSE_ACCEPTED) {
		FUNC2(fdtv->device, "LNB control failed\n");
		ret = -EINVAL;
	}
out:
	FUNC4(&fdtv->avc_mutex);

	return ret;
}