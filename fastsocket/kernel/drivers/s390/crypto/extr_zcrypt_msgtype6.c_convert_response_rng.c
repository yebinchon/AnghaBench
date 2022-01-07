
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_device {int online; } ;
struct TYPE_4__ {int cprb_ver_id; } ;
struct TYPE_3__ {int type; int reply_code; } ;
struct type86x_reply {TYPE_2__ cprbx; TYPE_1__ hdr; } ;
struct ap_message {struct type86x_reply* message; } ;


 int EAGAIN ;
 int EINVAL ;



 int convert_type86_rng (struct zcrypt_device*,struct ap_message*,char*) ;

__attribute__((used)) static int convert_response_rng(struct zcrypt_device *zdev,
     struct ap_message *reply,
     char *data)
{
 struct type86x_reply *msg = reply->message;

 switch (msg->hdr.type) {
 case 130:
 case 128:
  return -EINVAL;
 case 129:
  if (msg->hdr.reply_code)
   return -EINVAL;
  if (msg->cprbx.cprb_ver_id == 0x02)
   return convert_type86_rng(zdev, reply, data);


 default:
  zdev->online = 0;
  return -EAGAIN;
 }
}
