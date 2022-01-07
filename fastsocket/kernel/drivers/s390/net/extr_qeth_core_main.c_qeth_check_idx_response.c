
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL ;
 int EIO ;
 int EPERM ;
 int QETH_DBF_CTRL_LEN ;
 int QETH_DBF_HEX (int ,int,unsigned char*,int ) ;
 int QETH_DBF_MESSAGE (int,char*,unsigned char,char*) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int TRACE ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int qeth_check_idx_response(struct qeth_card *card,
 unsigned char *buffer)
{
 if (!buffer)
  return 0;

 QETH_DBF_HEX(CTRL, 2, buffer, QETH_DBF_CTRL_LEN);
 if ((buffer[2] & 0xc0) == 0xc0) {
  QETH_DBF_MESSAGE(2, "received an IDX TERMINATE "
      "with cause code 0x%02x%s\n",
      buffer[4],
      ((buffer[4] == 0x22) ?
       " -- try another portname" : ""));
  QETH_DBF_TEXT(TRACE, 2, "ckidxres");
  QETH_DBF_TEXT(TRACE, 2, " idxterm");
  QETH_DBF_TEXT_(TRACE, 2, "  rc%d", -EIO);
  if (buffer[4] == 0xf6) {
   dev_err(&card->gdev->dev,
   "The qeth device is not configured "
   "for the OSI layer required by z/VM\n");
   return -EPERM;
  }
  return -EIO;
 }
 return 0;
}
