
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int dummy; } ;
struct TYPE_2__ {int msg_len; void* request_code; void* msg_type_code; int msg_fmt; } ;
struct type4_sme {unsigned char* modulus; unsigned char* exponent; unsigned char* message; TYPE_1__ header; } ;
struct type4_lme {unsigned char* modulus; unsigned char* exponent; unsigned char* message; TYPE_1__ header; } ;
struct ica_rsa_modexpo {int inputdatalength; int inputdata; int b_key; int n_modulus; } ;
struct ap_message {int length; struct type4_sme* message; } ;


 int EFAULT ;
 int TYPE4_LME_FMT ;
 void* TYPE4_REQU_CODE ;
 int TYPE4_SME_FMT ;
 void* TYPE4_TYPE_CODE ;
 scalar_t__ copy_from_user (unsigned char*,int ,int) ;
 int memset (struct type4_sme*,int ,int) ;

__attribute__((used)) static int ICAMEX_msg_to_type4MEX_msg(struct zcrypt_device *zdev,
          struct ap_message *ap_msg,
          struct ica_rsa_modexpo *mex)
{
 unsigned char *modulus, *exponent, *message;
 int mod_len;

 mod_len = mex->inputdatalength;

 if (mod_len <= 128) {
  struct type4_sme *sme = ap_msg->message;
  memset(sme, 0, sizeof(*sme));
  ap_msg->length = sizeof(*sme);
  sme->header.msg_fmt = TYPE4_SME_FMT;
  sme->header.msg_len = sizeof(*sme);
  sme->header.msg_type_code = TYPE4_TYPE_CODE;
  sme->header.request_code = TYPE4_REQU_CODE;
  modulus = sme->modulus + sizeof(sme->modulus) - mod_len;
  exponent = sme->exponent + sizeof(sme->exponent) - mod_len;
  message = sme->message + sizeof(sme->message) - mod_len;
 } else {
  struct type4_lme *lme = ap_msg->message;
  memset(lme, 0, sizeof(*lme));
  ap_msg->length = sizeof(*lme);
  lme->header.msg_fmt = TYPE4_LME_FMT;
  lme->header.msg_len = sizeof(*lme);
  lme->header.msg_type_code = TYPE4_TYPE_CODE;
  lme->header.request_code = TYPE4_REQU_CODE;
  modulus = lme->modulus + sizeof(lme->modulus) - mod_len;
  exponent = lme->exponent + sizeof(lme->exponent) - mod_len;
  message = lme->message + sizeof(lme->message) - mod_len;
 }

 if (copy_from_user(modulus, mex->n_modulus, mod_len) ||
     copy_from_user(exponent, mex->b_key, mod_len) ||
     copy_from_user(message, mex->inputdata, mod_len))
  return -EFAULT;
 return 0;
}
