
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int subunit; int avc_mutex; int device; int avc_data_length; scalar_t__ avc_data; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct avc_response_frame {scalar_t__ response; } ;
struct avc_command_frame {int subunit; char* operand; int opcode; int ctype; } ;


 int ALIGN (int,int) ;
 int AVC_CTYPE_CONTROL ;
 int AVC_OPCODE_VENDOR ;
 scalar_t__ AVC_RESPONSE_ACCEPTED ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 int EINVAL ;
 char SFE_VENDOR_DE_COMPANYID_0 ;
 char SFE_VENDOR_DE_COMPANYID_1 ;
 char SFE_VENDOR_DE_COMPANYID_2 ;
 char SFE_VENDOR_OPCODE_LNB_CONTROL ;
 int avc_write (struct firedtv*) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pad_operands (struct avc_command_frame*,int) ;

int avc_lnb_control(struct firedtv *fdtv, char voltage, char burst,
      char conttone, char nrdiseq,
      struct dvb_diseqc_master_cmd *diseqcmd)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 struct avc_response_frame *r = (void *)fdtv->avc_data;
 int pos, j, k, ret;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_CONTROL;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
 c->opcode = AVC_OPCODE_VENDOR;

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
 pad_operands(c, pos);

 fdtv->avc_data_length = ALIGN(3 + pos, 4);
 ret = avc_write(fdtv);
 if (ret < 0)
  goto out;

 if (r->response != AVC_RESPONSE_ACCEPTED) {
  dev_err(fdtv->device, "LNB control failed\n");
  ret = -EINVAL;
 }
out:
 mutex_unlock(&fdtv->avc_mutex);

 return ret;
}
