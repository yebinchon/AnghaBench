
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int online; TYPE_1__* ap_dev; } ;
struct error_hdr {int reply_code; } ;
struct ap_message {struct error_hdr* message; } ;
struct TYPE_2__ {int qid; } ;


 int DBF_ERR ;
 int EAGAIN ;
 int EINVAL ;







 int WARN_ON (int) ;
 int ZCRYPT_DBF_DEV (int ,struct zcrypt_device*,char*,int ,int ,int) ;
 int atomic_set (int *,int) ;
 int zcrypt_rescan_req ;

__attribute__((used)) static inline int convert_error(struct zcrypt_device *zdev,
    struct ap_message *reply)
{
 struct error_hdr *ehdr = reply->message;

 switch (ehdr->reply_code) {
 case 131:
 case 130:
 case 134:
 case 128:




  return -EINVAL;
 case 132:






  WARN_ON(1);
  atomic_set(&zcrypt_rescan_req, 1);
  zdev->online = 0;
  ZCRYPT_DBF_DEV(DBF_ERR, zdev, "dev%04xo%drc%d",
          zdev->ap_dev->qid,
          zdev->online, ehdr->reply_code);
  return -EAGAIN;
 case 129:
 case 133:


  atomic_set(&zcrypt_rescan_req, 1);
  zdev->online = 0;
  ZCRYPT_DBF_DEV(DBF_ERR, zdev, "dev%04xo%drc%d",
          zdev->ap_dev->qid,
          zdev->online, ehdr->reply_code);
  return -EAGAIN;
 default:
  zdev->online = 0;
  ZCRYPT_DBF_DEV(DBF_ERR, zdev, "dev%04xo%drc%d",
          zdev->ap_dev->qid,
          zdev->online, ehdr->reply_code);
  return -EAGAIN;
 }
}
