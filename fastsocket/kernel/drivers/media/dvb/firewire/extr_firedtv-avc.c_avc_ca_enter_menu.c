
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int subunit; int avc_data_length; int avc_mutex; scalar_t__ avc_data; } ;
struct avc_command_frame {int subunit; scalar_t__* operand; int opcode; int ctype; } ;


 int AVC_CTYPE_STATUS ;
 int AVC_OPCODE_VENDOR ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_0 ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_1 ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_2 ;
 scalar_t__ SFE_VENDOR_OPCODE_HOST2CA ;
 scalar_t__ SFE_VENDOR_TAG_CA_ENTER_MENU ;
 int avc_write (struct firedtv*) ;
 int clear_operands (struct avc_command_frame*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int avc_ca_enter_menu(struct firedtv *fdtv)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 int ret;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_STATUS;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
 c->opcode = AVC_OPCODE_VENDOR;

 c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
 c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
 c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
 c->operand[3] = SFE_VENDOR_OPCODE_HOST2CA;
 c->operand[4] = 0;
 c->operand[5] = SFE_VENDOR_TAG_CA_ENTER_MENU;
 clear_operands(c, 6, 8);

 fdtv->avc_data_length = 12;
 ret = avc_write(fdtv);



 mutex_unlock(&fdtv->avc_mutex);

 return ret;
}
