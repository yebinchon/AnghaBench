
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SmsMsgHdr_ST {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
typedef int Msg ;


 int DEVICE_MODE_DVBT ;
 int DEVICE_MODE_DVBT_BDA ;
 int EINVAL ;
 int HIF_TASK ;
 int MSG_SW_RELOAD_REQ ;
 int sms_err (char*,int) ;
 int smsusb_sendrequest (void*,struct SmsMsgHdr_ST*,int) ;

__attribute__((used)) static int smsusb1_setmode(void *context, int mode)
{
 struct SmsMsgHdr_ST Msg = { MSG_SW_RELOAD_REQ, 0, HIF_TASK,
        sizeof(struct SmsMsgHdr_ST), 0 };

 if (mode < DEVICE_MODE_DVBT || mode > DEVICE_MODE_DVBT_BDA) {
  sms_err("invalid firmware id specified %d", mode);
  return -EINVAL;
 }

 return smsusb_sendrequest(context, &Msg, sizeof(Msg));
}
