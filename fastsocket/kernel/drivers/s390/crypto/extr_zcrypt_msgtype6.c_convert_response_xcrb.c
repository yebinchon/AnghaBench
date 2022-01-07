
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct zcrypt_device {int online; } ;
struct TYPE_6__ {int cprb_ver_id; } ;
struct TYPE_5__ {int apfs; } ;
struct TYPE_4__ {int reply_code; } ;
struct type86x_reply {TYPE_3__ cprbx; TYPE_2__ fmt2; TYPE_1__ hdr; } ;
struct ica_xcRB {int status; } ;
struct ap_message {struct type86x_reply* message; } ;


 int EAGAIN ;



 int convert_error (struct zcrypt_device*,struct ap_message*) ;
 int convert_type86_xcrb (struct zcrypt_device*,struct ap_message*,struct ica_xcRB*) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static int convert_response_xcrb(struct zcrypt_device *zdev,
       struct ap_message *reply,
       struct ica_xcRB *xcRB)
{
 struct type86x_reply *msg = reply->message;


 switch (((unsigned char *) reply->message)[1]) {
 case 130:
 case 128:
  xcRB->status = 0x0008044DL;
  return convert_error(zdev, reply);
 case 129:
  if (msg->hdr.reply_code) {
   memcpy(&(xcRB->status), msg->fmt2.apfs, sizeof(u32));
   return convert_error(zdev, reply);
  }
  if (msg->cprbx.cprb_ver_id == 0x02)
   return convert_type86_xcrb(zdev, reply, xcRB);


 default:
  xcRB->status = 0x0008044DL;
  zdev->online = 0;
  return -EAGAIN;
 }
}
